package site.itwill.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//�α��� ���� ���� ó���� ���� ���ͼ��� Ŭ����
// => ��α��� ������� ��� ���� �������� �̵� ó��
public class LoginAuthInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		String pa=request.getContextPath();
		if(session.getAttribute("loginMember")==null) {
			String path = request.getServletPath();
	        String query = request.getQueryString();
	        if(query != null){ 
	        	session.setAttribute("prev_url", path+"?"+query);
	        }else{
	        	session.setAttribute("prev_url", path);
	        }
			response.sendRedirect(pa+"/member/login");
			return false;
		}
		return true;
	}
}
