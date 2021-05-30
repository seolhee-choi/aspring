package site.itwill.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import site.itwill.dto.Member;

//인터셉터 클래스는 HandlerInterceptorAdapter 클래스를 상속받아 작성한다.
// =>Bean configuration file에서 Spring bean으로 등록하여 사용한다. servlet-context.xml

//관리자 관련 권한 처리를 위한 인터셉터 클래스
// =>비로그인 사용자이거나 관리자가 아닌 경우 에러페이지로 이동하도록 만들어주자
public class AdminAuthInterceptor extends HandlerInterceptorAdapter{
	
	//preHandle() : 요청 처리 메소드 호출 전 실행될 명령을 작성하는 메소드
	// =>권한에 따른 명령을 실행하기 위해 사용
	// =>false 반환: 요청 처리메소드 미호출, true: 요청 처리 메소드 호출해도 된다는 뜻
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember==null || loginMember.getmStatus()!=9) {
			//request.getRequestDispatcher("userinfo/user_error.jsp").forward(request, response);
			//return false;
			
			throw new Exception();
		}
		return true;
	}
	
	
	//postHandle() : 요청 처리 메소드 호출 후 실행될 명령을 작성하는 메소드 (별로 쓸 일 없다)
	// =>요청 처리 메소드에서 예외가 발생된 경우 [미호출]
	// =>요청 처리 메소드의 반환값을 조작할 경우 사용
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
	
	//postHandle() : 요청 처리 메소드 호출 후 실행될 명령을 작성하는 메소드 (잘 안쓴다)
	// =>요청 처리 메소드에서 예외가 발생된 경우 [호출]
	// =>예외 처리할 경우 사용
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}
	
	
}
