package Assignment_Java_5.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@Service
public class CookieServiceImpl implements CookieService{
	@Autowired HttpServletRequest req;
	@Autowired HttpServletResponse resp;
	@Autowired Base64EncodingService b64;
	public Cookie get(String name) {
		Cookie[] cookies = req.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equalsIgnoreCase(name)) {
					return cookie;
				}
			}
		}
		return null;
	}
	public String getValue(String name) {
		Cookie cookie = this.get(name);
		return cookie != null ? b64.decode(cookie.getValue()) : "";
	}
	public Cookie add(String name, String value, int hours) {
		Cookie cookie = new Cookie(name, b64.encode(value));
		cookie.setMaxAge(hours);
		cookie.setPath("/");
		
		resp.addCookie(cookie);
		
		return cookie;
	}
	public void remove(String name) {
		this.add(name, "", 0);
	}
}
