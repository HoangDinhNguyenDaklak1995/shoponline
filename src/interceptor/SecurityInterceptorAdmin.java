package interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SecurityInterceptorAdmin extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse reponse, Object handler) throws Exception{
		HttpSession session = request.getSession();
		 if(session.getAttribute("useradmin") == null){
			reponse.sendRedirect(request.getContextPath()+"/index.htm");
			return false;
			
		}
		return true;
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse reponse, Object handler, ModelAndView modelAndView) throws Exception{
		
		
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse reponse, Object handler,Exception ex) throws Exception{
		
		
	}
}
