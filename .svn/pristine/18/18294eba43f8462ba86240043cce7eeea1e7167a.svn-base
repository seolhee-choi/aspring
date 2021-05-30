package site.itwill.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Member;
import site.itwill.dto.Reservation;
import site.itwill.dto.ReservationJoin;
import site.itwill.dto.ReservationSearch;
import site.itwill.dto.ReservationTwo;
import site.itwill.dto.Room;
import site.itwill.service.ReservationService;
import site.itwill.util.Pager;

@Controller
//@RequestMapping("/rsv")
public class BookController {
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/rsv/testL")
	public String testL(HttpSession session, HttpServletRequest request) {
		String mId="qwe123";
		session.setAttribute("testMember", reservationService.getTestMember(mId));
		String referer = request.getHeader("Referer");
		//System.out.println("redirect:"+ referer);
		return "redirect:"+ referer;
	}
	
	@RequestMapping("/rsv/testL2")
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	@RequestMapping("/rsv/stepOne")
	public String stepOne() {
		return "book/rsv_01";
	}
	
	@RequestMapping(value = "/rsv/stepTwo", method = RequestMethod.POST)
	public String stepTwo(@ModelAttribute ReservationTwo reservationTwo, Model model) {
		model.addAttribute("roomList", reservationService.getRoomCheckList(reservationTwo));
		return "book/rsv_02";
	}
	
	@RequestMapping(value = "/rsv/stepThree")
	public String stepThree(@ModelAttribute ReservationTwo reservationTwo, Model model) {
		//model.addAttribute("roomList", reservationService.getRoomCheckList(reservationTwo));
		model.addAttribute("roomList", reservationService.getAllRoomL());
		model.addAttribute("room", reservationService.getRoomOne(reservationTwo.getRmNo()));
		return "book/rsv_03";
	}
	
	@RequestMapping(value = "/rsv/check")
	@ResponseBody
	public Map<String, Object> check(@RequestParam int rmNo, 
			@RequestParam String checkin, @RequestParam String checkout) {
		
		ReservationTwo reservationTwo=new ReservationTwo();
		reservationTwo.setRmNo(rmNo);
		reservationTwo.setCheckin(checkin);
		reservationTwo.setCheckout(checkout);
		
		int a=reservationService.getCheckAvailable(reservationTwo);
		
		Map<String, Object> result=new HashMap<String, Object>();
		result.put("posible", a);
		if(a!=0) {
			List<Room> availableRoomList=reservationService.getAvailableRoom(reservationTwo);
			result.put("availableRoomList", availableRoomList);
		}
		 
		return result;
	}
	
	@RequestMapping(value = "/rsv/stepFour", method = RequestMethod.POST)
	public String reservation4(@ModelAttribute ReservationTwo reservationTwo, Model model) throws ParseException {
		
		Room room=reservationService.getRoomOne(reservationTwo.getRmNo());
		int datecount=0;
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date FirstDate = format.parse(reservationTwo.getCheckinTime());
        Date SecondDate = format.parse(reservationTwo.getCheckoutTime());
        long calDate=SecondDate.getTime()-FirstDate.getTime(); 
        long calDateDays=calDate/( 24*60*60*1000); 
        calDateDays = Math.abs(calDateDays);
        datecount=(int)calDateDays;
		
		
		int price=room.getRmPrice()*datecount;

		int ppl=room.getRmPpl(); //기준인원
		int adult=reservationTwo.getAdult(); //성인
		int children=reservationTwo.getChildren(); //아이
		
		int payment=0; //총 결제금액
		int addition=0; //추가인원
		
		if(adult+children<=ppl) {
			payment=price-reservationTwo.getMileage();
		}else if(adult+children>ppl){
			addition=(adult+children)-ppl;
			payment=((addition*10000)*datecount)+price-reservationTwo.getMileage();
		}
		System.out.println("test="+payment);
		
		model.addAttribute("room", room);
		model.addAttribute("datecount", datecount); //숙박일
		model.addAttribute("addition", addition); //추가인원
		model.addAttribute("payment", payment); //총 결제금액

		return "book/rsv_04";
	}
	
	@RequestMapping("/rsv/addRsv")
	public String addRsv(@ModelAttribute Reservation reservation, HttpSession session) {
		Member member=reservationService.addRsv(reservation);
		session.setAttribute("loginMember", member);
		return "redirect:/rsv/myRsvList";
	}
	
	@RequestMapping("/calendar")
	public String calendar(Model model) {
		
		return "calendar/calendar";
	}
	
	@RequestMapping("/calendara")
	@ResponseBody
	public Map<String, Object> calendara(Model model) {
		List<ReservationJoin> rsvList=reservationService.getRsvList();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("rsvList", rsvList);
		return map;
	}
	
	@RequestMapping("/rsv/rsvOne")
	public String rsvOne(HttpSession session, Model model, int rsvNo) throws Exception {
		ReservationJoin rsvOne=reservationService.getRsvOne(rsvNo);
		Member member=(Member)session.getAttribute("loginMember");
		
		if(!member.getmId().equals(rsvOne.getmId()) && member.getmStatus()!=9) {
			throw new Exception("권한이 없습니다");
		}
		
		model.addAttribute("rsvOne", rsvOne);
		return "book/rsv_one";
	}
	
	
	//로그인 상태 아니면 500에러
	@RequestMapping("/rsv/myRsvList")
	public String rsvList(@RequestParam(defaultValue = "1") int pageNum, HttpSession session, Model model) {
		Member member=(Member) session.getAttribute("loginMember");
		int totalBoard=reservationService.getMyRsvCount(member.getmId());
		int pageSize=5;
		int blockSize=5;
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("mId", member.getmId());
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("myRsvList", reservationService.getMyRsvList(pagerMap));
		model.addAttribute("pager", pager);

		return "book/rsv_list";
	}
	
	@RequestMapping(value = "/rsv/myRsvList2", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> myRsvList2(@RequestParam(defaultValue = "1") int pageNum, HttpSession session) {
		Member member=(Member) session.getAttribute("loginMember");

		int totalBoard=reservationService.getMyRsvCount2(member.getmId());
		int pageSize=5;
		int blockSize=5;

		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);

		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("mId", member.getmId());
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());

		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("myRsvList", reservationService.getMyRsvList2(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	//입금 전 취소
	@Transactional
	@RequestMapping("/rsv/rsvCancel")
	public String rsvCancel(@RequestParam int rsvNo, HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ReservationJoin rsv=reservationService.getRsvOne(rsvNo);
		Member member=(Member)session.getAttribute("loginMember");
		
		if(!member.getmId().equals(rsv.getmId()) && member.getmStatus()!=9) {
			throw new Exception("권한이 없습니다");
		}
		
		if(rsv.getRsvStatus()!=1) {
			throw new Exception("입금대기 상태의 예약만 입금 전 취소 상태로 변경 가능합니다.");
		}
		
		reservationService.modifyRsvCancel1(rsvNo);
		if(member.getmId().equals(rsv.getmId())) {
			session.setAttribute("loginMember", reservationService.getTestMember(rsv.getmId()));
		}
		
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	//환불대기 상태로 변경
	@Transactional
	@RequestMapping("/rsv/rsvCancel2")
	public String rsvCancel2(@RequestParam int rsvNo, HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ReservationJoin rsv=reservationService.getRsvOne(rsvNo);
		Member member=(Member)session.getAttribute("loginMember");
		
		if(!member.getmId().equals(rsv.getmId()) && member.getmStatus()!=9) {
			throw new Exception("권한이 없습니다");
		}
		
		if(rsv.getRsvStatus()!=2) {
			throw new Exception("입금완료 상태인 예약만 환불대기 상태로 변경 가능합니다");
		}
		
		reservationService.modifyRsvCancel2(rsvNo);
		
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	
	//어드민-------------------------------------------------------------
	@RequestMapping("/admin/reservation")
	public String test001(ReservationSearch rsvSearch,Model model, HttpServletRequest request) {
		model.addAttribute("rsvSearch", rsvSearch);
		
		if(rsvSearch.getStatusList()!=null) {
			for(int i=0;i<rsvSearch.getStatusList().length;i++) {
				model.addAttribute("statusL"+rsvSearch.getStatusList()[i], 1);
			}
		}
		
		if(rsvSearch.getRmList()!=null) {
			model.addAttribute("rmL", rsvSearch.getRmList());
		}
		
		
		model.addAttribute("roomList", reservationService.getAllRoomL());
		model.addAttribute("rsvDynamicList", reservationService.getDynamicRsvList(rsvSearch));
		
		return "admin/dist/admin_reservation";
	}
	
	//결제완료 상태로 변경
	@Transactional
	@RequestMapping("/admin/rsvPayment")
	public String rsvPayment(String rsvNo, String[] checkname ,HttpServletRequest request) throws Exception {
		
		if(checkname!=null) {
			int[] checkNum=new int[checkname.length];
		 	for(int i=0; i<checkname.length; i++){
		 		checkNum[i]=Integer.parseInt(checkname[i]);
		 		reservationService.modifyRsvPayment(checkNum[i]);
		 	}
		}else{
			int no=Integer.parseInt(rsvNo);
			reservationService.modifyRsvPayment(no);
		}
		
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	//환불완료 상태로 변경
	@Transactional
	@RequestMapping("/admin/rsvRefundOk")
	public String rsvRefundOk(@RequestParam int rsvNo, HttpServletRequest request) throws Exception {
		
		reservationService.modifyRsvRefundOk(rsvNo);
		
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	
	//====================================================================================
	
	@RequestMapping("/rsvtest1")
	public String rsvtest1() {
		return "book/book_cancel";
	}
	@RequestMapping("/rsvtest2")
	public String rsvtest2() {
		return "book/rsv_list";
	}
	@RequestMapping("/rsvtest3")
	public String rsvtest3() {
		return "book/book_guidance";
	}
	@RequestMapping("/rsvtest4")
	public String rsvtest4() {
		return "book/book_option";
	}
	@RequestMapping("/rsvtest5")
	public String rsvtest5() {
		return "book/book_search1";
	}
	@RequestMapping("/rsvtest6")
	public String rsvtest6() {
		return "book/book_search2";
	}
	
	
	
}
