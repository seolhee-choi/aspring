package site.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
	
	
	/* =========================== */
	@RequestMapping("/roomtest0")
	public String room0() {
		return "room/room_foreground";
	}
	
	@RequestMapping("/roomtest1")
	public String room1() {
		return "room/room_room1";
	}
	
	@RequestMapping("/roomtest2")
	public String room2() {
		return "room/room_room2";
	}
	
	@RequestMapping("/roomtest3")
	public String room3() {
		return "room/room_room3";
	}
	
	@RequestMapping("/roomtest4")
	public String room4() {
		return "room/room_room4";
	}
	
	/* ============== */
	
	
	
	
}
