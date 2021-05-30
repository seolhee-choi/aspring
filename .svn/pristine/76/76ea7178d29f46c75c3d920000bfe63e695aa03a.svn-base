package site.itwill.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.HtmlUtils;

import site.itwill.dto.Info;
import site.itwill.dto.Member;
import site.itwill.service.InfoService;
import site.itwill.util.Pager;

@Controller
public class InfoCotroller {
	@Autowired
	private InfoService infoService;
	
	// Spring 관련 Beans
	@Autowired
	private WebApplicationContext context;
	
	@RequestMapping("/info")
	public String boardInfo(){
		return "board/info";
	}
	
	@RequestMapping(value = "/info/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> infoList(@RequestParam(defaultValue = "1") int pageNum){
		// Pasing
		int totalBoard = infoService.getInfoCount();
		int pageSize = 5;
		int blockSize = 5;
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("infoList", infoService.getSearchInfoList(pagerMap));
		returnMap.put("pager",pager);
		
		return returnMap;
	}
	
	// Info 정보 추가
	@RequestMapping(value="/info/add", method = RequestMethod.POST)
	public String infoAdd(@ModelAttribute Info info, Model model,HttpSession session) throws IllegalStateException, IOException {
		if(info.getFile().isEmpty()) { //첨부파일 없을 시 객실 기본파일로
			info.setInfoImg(context.getServletContext().getRealPath("/resources/images/rvImg/reviewDefaultImg.png"));
			info.setInfoContent(HtmlUtils.htmlEscape(info.getInfoContent()));
			infoService.addInfo(info);
			return "redirect:/info";

		} else { //첨부파일 있으면
			String uploadDir=context.getServletContext().getRealPath("/resources/images/rvImg");
			String upload= System.currentTimeMillis()+info.getFile().getOriginalFilename();
			System.out.println("uploadDir="+uploadDir);
			System.out.println("upload="+upload);
			info.getFile().transferTo(new File(uploadDir,upload));
			info.setInfoImg(upload);
			System.out.println("review.setRvImg(upload) = "+(String)(info.getInfoImg()));
			info.setInfoContent(HtmlUtils.htmlEscape(info.getInfoContent()));
			infoService.addInfo(info);
			return "redirect:/review";
		}
	}
	
	@RequestMapping(value = "/info/write", method = RequestMethod.GET)
	public String reviewAdd(Model model, HttpSession session) {
		Member member=(Member)session.getAttribute("loginMember");
		model.addAttribute("mId", member.getmId());
		return "board/info_write";
	}
	
	@RequestMapping(value = "/info/detail/{infoNo}", method = RequestMethod.GET)
	public String infoDetail(@PathVariable int infoNo, Model model) {
		infoService.modifyCountInfo(infoNo);
		
		
		model.addAttribute("infoNo", infoService.getInfo(infoNo));
		return "board/info_detail";
	}
	
	@RequestMapping(value = "/info/modify", method = RequestMethod.GET)
	public String infoModify(@RequestParam int infoNo, Model model) {
		model.addAttribute("info", infoService.getInfo(infoNo));
		return "board/info_modify";
	}
	/*
	//리뷰 전달받아 리뷰 변경
	@RequestMapping(value = "/info/modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String reviewModify(@RequestBody Info info) {
		infoService.modifyInfo(info);
		return "board/info_modify";
	}
	*/
	
	@RequestMapping(value = "/info/modify", method = RequestMethod.POST)
	public String infoModify(@ModelAttribute Info info ) {
		infoService.modifyInfo(info);
		return "redirect:/info";
	}
	
	//글번호 전달받아 리뷰 삭제
	@RequestMapping(value ="/info/remove")
	public String infoRemove(@RequestParam int infoNo) {
		infoService.removeInfo(infoNo);
		return "redirect:/";
	}
	

}
