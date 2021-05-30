package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import site.itwill.dto.Member;

@Controller
public class AdminMemberRSVController {
	
	/* ============== */
	
	@RequestMapping("/admin/test1")
	public String adminMain(HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		System.out.println(loginMember.getmStatus());
		if(loginMember==null || loginMember.getmStatus()!=9) {
			//request.getRequestDispatcher("userinfo/user_error.jsp").forward(request, response);
			//return false;
			return "member/member_login"; //jsp ºä³×ÀÓ ¹ÝÈ¯
		}
		
		
		return "admin/admin_index";
	}
	
	@RequestMapping("/admin/test2")
	public String test02() {
		return "admin/dist/admin_memberlist";
	}
	@RequestMapping("/admin/test3")
	public String test03() {
		return "admin/dist/admin_memerRegister";
	}
	
	@RequestMapping("/admin/test4")
	public String test04() {
		return "admin/dist/admin_reservation";
	}
	
	
	
	
	
	
}
