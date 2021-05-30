package site.itwill.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.MemberExistsException;
import site.itwill.exception.MemberNotFoundException;
import site.itwill.service.MemberService;
import site.itwill.util.EmailSendBean;
import site.itwill.util.Math_random;
import site.itwill.util.ScriptUtil;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	

	//회원정보 입력하는 메소드
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public String join() throws Exception {
		return "member/member_join";
	}

	//회원정보 입력받아 MEMBER테이블에 저장하는 메소드
	@RequestMapping(value = "/member/join", method = RequestMethod.POST)
	public String join(@ModelAttribute Member member) throws MemberExistsException {
		memberService.insertMember(member);
		return "redirect:/member/login";//회원가입 완료시 로그인화면으로 이동 
	}
	
	//인증정보(ID/PW) 입력하는 메소드
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		return "member/member_login"; 
	}
	
	//인증정보(ID/PW)를 전달받아 MEMBER 테이블에 저장된 회원정보와 비교하여 인증처리하는 메소드
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member,HttpSession session) 
			throws LoginAuthFailException, MemberNotFoundException {
		//인증실패시
		memberService.loginAuth(member);
		System.out.println("로그인실패");
		
		//인증성공시
		session.setAttribute("loginMember", memberService.selectMember(member.getmId()));
		System.out.println("로그인성공");
		String path=(String) session.getAttribute("prev_url");
	      if(path==null) {
	         return "member/member_login";
	      }else {
	         session.removeAttribute("prev_url");
	         return "redirect:"+path;
	      }
	}

	//로그아웃 요청하는 메소드
	@RequestMapping(value = "/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login"; 
	}
	
	//회원정보 변경하는 페이지 출력 메소드 
	//로그인 사용자만 요청가능하도록 인터셉트 사용
	@RequestMapping(value = "/member/update", method = RequestMethod.GET) 
		public String update(@RequestParam String mId, Model model, HttpSession session) throws MemberNotFoundException { 
			Member member=(Member)session.getAttribute("loginMember");
			mId=member.getmId();
			model.addAttribute("member", memberService.selectMember(mId));
		return "member/member_mypage"; 
	}
	

	//회원정보 변경하는 메소드
	@RequestMapping(value = "/member/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Member member,HttpSession session) throws MemberNotFoundException {
		memberService.updateMember(member);
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		//변경회원이 현재 로그인 사용자인 경우
		if(loginMember.getmId().equals(member.getmId())) {
			session.setAttribute("loginMember", memberService.selectMember(member.getmId()));
		}
		return "redirect:/member/update?mId="+member.getmId(); 
	}

	//회원정보 삭제하는 메소드
	//로그인 사용자만 요청가능하도록 인터셉트 사용
	@RequestMapping(value = "/member/delete")
	public String delete(@RequestParam String mId,HttpSession session) throws MemberNotFoundException {
		memberService.deleteMember(mId);
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember.getmId().equals(mId)) {
			return "redirect:/member/logout";
		}
		return "redirect:/member/login"; 
	}

	//아이디 검색하는 페이지 출력하는 메소드
	@RequestMapping(value = "/member/find", method = RequestMethod.GET) 
	public String find() {
		return "member/member_id_pw_find";
	}
	
	//아이디 검색하는 메소드
	@RequestMapping(value = "/member/find", method = RequestMethod.POST) 
	public String find(Member member, Model model) throws MemberNotFoundException {
	
		try {
			Member member2=memberService.selectId(member);
			model.addAttribute("check", 0);
		 	model.addAttribute("mId", member2.getmId());
		 	return "member/member_id_pw_find"; 	
		} catch (MemberNotFoundException e) {
			model.addAttribute("check", 1); 
			return "member/member_id_pw_find"; 	
		}
	}
		
	
	//비밀번호 검색하는 메소드
	@RequestMapping(value = "/member/findPw", method = RequestMethod.POST) 
	public String findPw(@ModelAttribute Member member, HttpSession session, HttpServletResponse response, HttpServletRequest request ) throws MemberNotFoundException, IOException {
		/*
		 * ServletContext context1 = request.getServletContext(); String appPath =
		 * context1.getRealPath("/"); System.out.println("test"+appPath);
		 * 
		 * System.out.println(member.getmId()); System.out.println(member.getmEmail());
		 */
		member.setmPw(Math_random.getTempPassword(10));
		String pw=member.getmPw();
		member.setmPw(BCrypt.hashpw(member.getmPw(), BCrypt.gensalt()));
		int checkone=memberService.updatePw(member);
		if(checkone==0) {
			ScriptUtil.alertAndMovePage(response, "일치하는 회원정보가 없습니다.");
			return "member/member_id_pw_find";
		} else {
			ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
			EmailSendBean bean=context.getBean("emailSendBean", EmailSendBean.class);
			
			bean.sendEmail(member.getmEmail(), "Aspring 임시비밀번호 안내입니다."
					, "임시 비밀번호는"+pw+"입니다.");
			((ClassPathXmlApplicationContext)context).close();
			ScriptUtil.alertAndMovePage(response, "임시 비밀번호를 메일로 전송하였습니다.\\n 확인 후 마이페이지에서 비밀번호를 수정해주세요");
		}
		return "member/member_login";	
	}
	
	
	//관리자 페이지에서 회원목록을 출력하는 메소드
	@RequestMapping(value = "/admin/list")
	public String list(Model model) {
		model.addAttribute("memberList", memberService.selectMemberList());
		return "admin/dist/admin_memberlist";
	}

	//memberService.updateMember(member);
	
	//Member loginMember=(Member)session.getAttribute("loginMember");
	//변경회원이 현재 로그인 사용자인 경우
	//if(loginMember.getmId().equals(member.getmId())) {
	//	session.setAttribute("loginMember", memberService.selectMember(member.getmId()));
	//}
	//return "redirect:/member/update?mId="+member.getmId(); 
//}
	

	//관리자 페이지에서 회원정보 변경시 출력하는 메소드 - 불필요시 삭제
	@RequestMapping(value = "/admin/modify", method = RequestMethod.GET)
	public String modify(@RequestParam String mId, Model model) throws MemberNotFoundException {
		model.addAttribute("member", memberService.selectMember(mId));
		return "admin/list";
	}

	//관리자 페이지에서 회원정보 변경시 출력하는 메소드 - 불필요시 삭제
	@RequestMapping(value = "/admin/modify", method = RequestMethod.POST)
	public String modify(@ModelAttribute Member member, Model model) throws MemberNotFoundException {
		String id=member.getmId();
		
		memberService.updateMember(member);
		memberService.selectMember(member.getmId());
		return "admin/list?id="+member.getmId();
	}
	
	@RequestMapping(value = "/member/mileage")
	public String mileage() {
		return "member/member_mileage"; 
	}
	
	@RequestMapping(value = "/member/mybook")
	public String mybook() {
		return "member/member_mybook"; 
	}
	
	@ExceptionHandler(MemberExistsException.class)
	public String exceptionHandler(MemberExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "member/member_join";
	}
	
	@ExceptionHandler(LoginAuthFailException.class)
	public String exceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("mId", exception.getmId());
		return "member/member_login";
	}
}
