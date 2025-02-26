package Assignment_Java_5.Service;

import org.springframework.beans.factory.annotation.Autowired;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface CookieService {
	public Cookie get(String name);
	public String getValue(String name) ;
	public Cookie add(String name, String value, int hours) ;
	public void remove(String name) ;
}
