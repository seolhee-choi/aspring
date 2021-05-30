package site.itwill.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception exception) {
		exception.printStackTrace();//예외 기록
		return "member/member_error";
	}
	
	
}
