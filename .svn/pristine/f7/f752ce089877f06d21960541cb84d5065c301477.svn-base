package site.itwill.util;

import org.aspectj.lang.JoinPoint;

//메일 전송 관련 로그 기능을 제공하는 클래스 - Advice
public class EmailSendAdvice {
	//이메일 전송 전 실행될 명령을 구현하기 위한 메소드 - Before Advice 메소드
	// => JoinPoint 매개변수로 타겟메소드 정보를 제공받아 매개변수를 이용하여 로그 기능 구현
	public void beforeLog(JoinPoint joinPoint) {
		String email=(String)joinPoint.getArgs()[0];
		String subject=(String)joinPoint.getArgs()[1];
		System.out.println("[메세지]<"+email+">님에게 <"+subject+"> 제목의 이메일을 전송합니다.");
	}
	
	//메일 전송이 성공한 후에 실행될 명령을 구현하기 위한 메소드 - After Returning Advice 메소드
	// => 타겟메소드의 반환값을 제공받아 매개변수에 저장하여 로그 기능 구현
	public void successLog(String email) {
		System.out.println("[메세지]<"+email+">님에게 이메일을 성공적으로 전송하였습니다.");
	}

	//메일 전송이 실패한 후에 실행될 명령을 구현하기 위한 메소드 - After Throwing Advice 메소드
	// => 타겟메소드에서 발생된 예외를 제공받아 매개변수에 저장하여 로그 기능 구현
	public void failLog(Exception exception) {
		System.out.println("[에러]이메일 전송 실패 = "+exception.getMessage());
	}

}
