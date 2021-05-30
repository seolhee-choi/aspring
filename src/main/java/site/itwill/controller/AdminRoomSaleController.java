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
	
	
	
	
	
	
	//��û ó�� �޼ҵ�
	//���� ���� ��ûó���޼ҵ�
	@RequestMapping("/admin/sale")
	public String sale() {
		return "admin/dist/admin_sales";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//���� ���� ��ûó���޼ҵ�
	//1.���� ����Ʈ�� ��ȯ�ϴ� ��ûó�� �޼ҵ�
	@RequestMapping("/admin/room")
	public String room() {
		return "admin/dist/admin_rooms";
	}
	
	//2. ���Ǻ��� ��ư Ŭ���� ���ǹ�ȣ�� ���޹޾� ���� ���������� ��ȯ�ϴ� ��ûó�� �޼ҵ�
	@RequestMapping(value="/admin/roomModify/{rmNo}", method = RequestMethod.GET)
	public String roomModify(@PathVariable int rmNo, Model model) throws RoomNotFoundException {
		
		Room room=roomService.getRoom(rmNo);
		model.addAttribute("room", room);
		
		return "admin/dist/admin_room_modify"; //����� ��ȯ
	}
	
	
	//3. �������� ������ [����]Ŭ���� ���������� �����ϰ� ���Ǹ���Ʈ�� ��ȯ�ϴ� ��ûó���޼ҵ�
	//����� ���Ͼ��ε� �ǽ� �����ϱ�
	@RequestMapping(value="/admin/roomModify", method = RequestMethod.POST)
	public String roomModify(@ModelAttribute Room room) throws IllegalStateException, IOException, RoomNotFoundException {
		if(room.getFile().isEmpty()) {
			return "admin/dist/admin_room_modify"; //����� ��ȯ, ���޹��� ������ ������ ���ư���� ��
		}
		String uploadDir=context.getServletContext().getRealPath("/resources/assets/img/aspring/room"+room.getRmNo());

		String rmImg=room.getFile().getOriginalFilename();
		
		File file=new File(uploadDir, rmImg);
		
		room.getFile().transferTo(file); //���ε� ó��
		
		room.setRmImg(rmImg);
		
		roomService.modifyRoom(room);
			
		return "redirect:/admin/room"; //�����̷�Ʈ�� url ���û�ϵ���
	}
	

	
	//���� ó�� �޼ҵ�
	@ExceptionHandler(RoomNotFoundException.class)
	public String exceptionHandler(RoomNotFoundException exception) {
		System.out.println("�ش���ȣ ���� ����");
		return "admin/dist/500";
	}
	
	@ExceptionHandler(Exception.class) public String exceptionHandler(Exception exception) { 
		System.out.println("�̿� ���� �߻���"); 
		return "admin/dist/500"; 
	}
	

	
	
	
}
	
	
	
