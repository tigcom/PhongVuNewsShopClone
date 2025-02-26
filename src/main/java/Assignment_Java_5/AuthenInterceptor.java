package Assignment_Java_5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import Assignment_Java_5.Bean.NguoiDung;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class AuthenInterceptor implements HandlerInterceptor {
	@Autowired
	HttpSession session;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (session.getAttribute("usLog") != null) {
			NguoiDung nd = (NguoiDung) session.getAttribute("usLog");
			if (nd.getVaiTro()) {
				return true;
			}
		}else {
			response.sendRedirect("/user/dangnhap");
			return false;
		}
		session.setAttribute("secured-uri", request.getRequestURI());
		response.sendRedirect("/home");
		return false;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
}
