package site.itwill.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.HtmlUtils;

import site.itwill.dto.Member;
import site.itwill.dto.Review;
import site.itwill.service.ReviewService;
import site.itwill.util.Pager;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private WebApplicationContext context;
	
	@RequestMapping("/review") 
	public String boardReview() { 
		return "board/review";
	 }
	 
	@RequestMapping(value = "/review/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> ReviewList(@RequestParam(defaultValue = "1") int pageNum) {
		//System.out.println("pageNum = "+pageNum);
		int totalBoard=reviewService.getReviewCount(); 
		int pageSize=5; 
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("reviewList", reviewService.getSearchReviewList(pagerMap));
		returnMap.put("pager",pager);
		
		return returnMap;
	}
	
	//���������޾Ƽ� ������ - ó��
	@RequestMapping(value="/review/add", method = RequestMethod.POST)
	public String reviewAdd(@ModelAttribute Review review) throws IllegalStateException, IOException {
		if(review.getFile().isEmpty()) { //÷������ ���� �� ���� �⺻���Ϸ�
			//servlet-context.xml�� [<resources mapping="/images/**" location="/resources/images/" />] location�� ��δ� mappingó�� ǥ���Ǵ°�
			review.setRvImg("reviewDefaultImg.PNG");
			review.setRvContent(HtmlUtils.htmlEscape(review.getRvContent()));
			reviewService.addReview(review);
			return "redirect:/review";

		} else { //÷������ ������
			String uploadDir=context.getServletContext().getRealPath("/resources/images/rvImg");
			//String upload= System.currentTimeMillis()+review.getFile().getOriginalFilename();
			String upload= review.getFile().getOriginalFilename();
			review.getFile().transferTo(new File(uploadDir,upload));
			review.setRvImg(upload);
			review.setRvContent(HtmlUtils.htmlEscape(review.getRvContent()));
			reviewService.addReview(review);
			return "redirect:/review";
		}
		
	}
	
	//���侲�� �������� �� �� rmName ��¿�
	@RequestMapping(value = "/review/write", method = RequestMethod.GET)
	public String reviewAdd(Model model, HttpSession session) {
		Member member=(Member)session.getAttribute("loginMember");
		model.addAttribute("mId", member.getmId());
		model.addAttribute("rmName", reviewService.selectRmNameReviewWrite(member.getmId()));
		//System.out.println("memberId="+member.getmId());
		return "board/review_write";
	}
	
	//���� �󼼺���
	@RequestMapping(value = "/review/detail/{rvNo}", method = RequestMethod.GET)
	public String ReviewDetail(@PathVariable int rvNo, Model model) {
		reviewService.modifyHitsReview(rvNo);
		model.addAttribute("rvNo", reviewService.getReview(rvNo));
		return "board/review_detail";
	}
	
	
	/*
	//���� ���޹޾� ���� ����
	@RequestMapping(value = "/review/modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String reviewModify(@RequestBody Review review) {
		reviewService.modifyReview(review);
		return "board/review_modify";
	}
	*/
	
	//������� form���� ����
	@RequestMapping(value = "/review/modify/{rvNo}" , method = RequestMethod.GET)
		public String reviewModify(@PathVariable int rvNo, HttpServletRequest sr, Model model) {
		model.addAttribute("rvNo", reviewService.getReview(rvNo));
		model.addAttribute("rmName",sr.getParameter("rmName"));
		return "board/review_modify";
	}
	
	//���� ���� - ??????????????????????????????????????????????
	@RequestMapping(value = "/review/modify", method = RequestMethod.POST)
	public String reviewModify(@ModelAttribute Review review) throws IllegalStateException, IOException {
		if(review.getFile().isEmpty()) { //÷������ ���� ��  dto�� �ִ� ���� ����
			review.setRvImg(review.getRvImg());
			review.setRvContent(HtmlUtils.htmlEscape(review.getRvContent()));
			reviewService.modifyReview(review);
			return "redirect:/review";

		} else { //÷������ ������
			String uploadDir=context.getServletContext().getRealPath("/resources/images/rvImg");
			String upload= review.getFile().getOriginalFilename();
			review.getFile().transferTo(new File(uploadDir,upload));
			review.setRvImg(upload);
			review.setRvContent(HtmlUtils.htmlEscape(review.getRvContent()));
			reviewService.modifyReview(review);
			return "redirect:/review";
		}
	}
	
	//�۹�ȣ ���޹޾� ���� ����
	@RequestMapping(value ="/review/remove/{rvNo}", method = RequestMethod.DELETE)
	@ResponseBody
	public String reviewRemove(@PathVariable int rvNo) {
		reviewService.removeReview(rvNo);
		return "success";
	}
	
	//Ű����˻�
	@RequestMapping(value="/review/search/{keyword}")
	@ResponseBody
	public Map<String, Object> reviewSearch(@PathVariable String keyword, @RequestParam(defaultValue = "1") int pageNum) {
//		Map<String,Object> map=new HashMap<String, Object>();
//		map.put("keyword", keyword);
		
		int totalBoard=reviewService.selectCount(); 
		int pageSize=5; 
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow()); 
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("keyword", keyword);
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("reviewList", reviewService.getSearchReviewList(pagerMap));
		returnMap.put("pager",pager);
		
		//reviewService.getSearchReviewList(map);
		return returnMap;
	}
	
	
	
	
}
