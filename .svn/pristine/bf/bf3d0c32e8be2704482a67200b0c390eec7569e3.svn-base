package site.itwill.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import site.itwill.dto.Room;
import site.itwill.exception.RoomNotFoundException;
import site.itwill.service.RoomService;

@Controller
public class AdminRoomSaleController {
	
	
	/* ============== */
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private WebApplicationContext context;
	
	
	
	
	
	
	//요청 처리 메소드
	//매출 관련 요청처리메소드
	@RequestMapping("/admin/sale")
	public String sale() {
		return "admin/dist/admin_sales";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//객실 관련 요청처리메소드
	//1.객실 리스트를 반환하는 요청처리 메소드
	@RequestMapping("/admin/room")
	public String room() {
		return "admin/dist/admin_rooms";
	}
	
	//2. 객실변경 버튼 클릭시 객실번호를 전달받아 객실 상세페이지를 반환하는 요청처리 메소드
	@RequestMapping(value="/admin/roomModify/{rmNo}", method = RequestMethod.GET)
	public String roomModify(@PathVariable int rmNo, Model model) throws RoomNotFoundException {
		
		Room room=roomService.getRoom(rmNo);
		model.addAttribute("room", room);
		
		return "admin/dist/admin_room_modify"; //뷰네임 반환
	}
	
	
	//3. 객실정보 변경후 [변경]클릭시 객실정보를 변경하고 객실리스트를 반환하는 요청처리메소드
	//강사님 파일업로드 실습 참조하기
	@RequestMapping(value="/admin/roomModify", method = RequestMethod.POST)
	public String roomModify(@ModelAttribute Room room) throws IllegalStateException, IOException, RoomNotFoundException {
		if(room.getFile().isEmpty()) {
			return "admin/dist/admin_room_modify"; //뷰네임 반환, 전달받은 파일이 없으면 돌아가라는 뜻
		}
		String uploadDir=context.getServletContext().getRealPath("/resources/assets/img/aspring/room"+room.getRmNo());

		String rmImg=room.getFile().getOriginalFilename();
		
		File file=new File(uploadDir, rmImg);
		
		room.getFile().transferTo(file); //업로드 처리
		
		room.setRmImg(rmImg);
		
		roomService.modifyRoom(room);
			
		return "redirect:/admin/room"; //리다이렉트로 url 재요청하도록
	}
	

	
	//예외 처리 메소드
	@ExceptionHandler(RoomNotFoundException.class)
	public String exceptionHandler(RoomNotFoundException exception) {
		System.out.println("해당방번호 방이 없음");
		return "admin/dist/500";
	}
	
	@ExceptionHandler(Exception.class) public String exceptionHandler(Exception exception) { 
		System.out.println("이외 예외 발생함"); 
		return "admin/dist/500"; 
	}
	

	
	
	
}
	
	
	
