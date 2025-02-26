package Assignment_Java_5.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.Service.SessionService;

@ControllerAdvice
public class GlobalModelAttributes {
	@Autowired SessionService ses;
	
	  @ModelAttribute
	    public void addLoggedInUser(Model model) {
	        NguoiDung uslog = ses.get("usLog") != null ? ses.get("usLog") : new NguoiDung();
	        System.out.println(uslog.getTenDangNhap());
	        model.addAttribute("usLog", uslog);
	    }
}
