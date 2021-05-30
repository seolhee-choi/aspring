package site.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import site.itwill.dto.Room;
import site.itwill.service.RoomService;

@Controller
public class TestController {
	@Autowired
	private RoomService roomService;
	
	@RequestMapping("/")
	public String tiles(Model model) {
		
		List<Room> roomList= roomService.getRoomList();
		model.addAttribute("roomList", roomList);
		
		return "layout/welcome"; //메인화면 뷰네임 반환
	}
	
	@RequestMapping("/location")
	public String tiles1() {
		return "layout/location"; 
	}
	

	@RequestMapping("/secondnights")
	public String tiles2() {
		return "layout/secondnights"; 
	}
	
	
}
