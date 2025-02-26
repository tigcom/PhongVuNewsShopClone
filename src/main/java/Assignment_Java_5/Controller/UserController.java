package Assignment_Java_5.Controller;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Assignment_Java_5.Bean.LoaiHang;
import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.Bean.ThuocTinh;
import Assignment_Java_5.Service.CookieService;
import Assignment_Java_5.Service.LoaiHangService;
import Assignment_Java_5.Service.MailService;
import Assignment_Java_5.Service.NguoiDungService;
import Assignment_Java_5.Service.SanPhamService;
import Assignment_Java_5.Service.SessionService;
import Assignment_Java_5.Service.ThuocTinhService;
import jakarta.validation.Valid;





@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired NguoiDungService ser;
	@Autowired SanPhamService sersp;
	@Autowired LoaiHangService serlh;
	@Autowired SessionService ses;
	@Autowired ThuocTinhService sertt;
	@Autowired CookieService ck;
	@Autowired MailService mail;
	NguoiDung usLog = ses != null ? ses.get("usLog"): new NguoiDung();
	@GetMapping("/dangnhap")
	public String login(Model md) {
		if (ck.getValue("username")!= null) {
			usLog.setTenDangNhap(ck.getValue("username"));
			usLog.setMatKhau(ck.getValue("password"));
		}
		md.addAttribute("user",usLog);
		return "view/dangnhap";
	}
	@GetMapping("/dangky")
	public String signup(Model md) {
		NguoiDung mn = new NguoiDung();
		mn.setMatKhau("1234890");
		md.addAttribute("user",mn);
		return "view/dangky";
	}
	@PostMapping("/dangky")
	public String dangky(Model md, @Valid @ModelAttribute("user") NguoiDung nd, Errors er) {
	    if (er.hasErrors()) {
	        return "view/dangky"; 
	    }
	    UUID random = UUID.randomUUID();
	    nd.setMatKhau(random.toString().substring(0, 10));
	    nd.setVaiTro(false);
	    ser.createND(nd);
	    mail.sendPassword(nd);

	    return "redirect:/user/dangnhap";
	}

	@GetMapping("/profile")
	public String profile(Model md) {
		return "view/profile";
	}
	@GetMapping("/createProduct")
	public String createProduct(Model md) {
		md.addAttribute("listSp", sersp.findAll());
		md.addAttribute("listLH",serlh.findAll());
		return "layout/layoutCRUDSP";
		
		
	}
	@GetMapping("/qlUser")
	public String qlUser(Model md) {
		md.addAttribute("usLog", new NguoiDung());
		md.addAttribute("listU", ser.list());
		
		return "view/quanlyND";
		
		
	}
	@GetMapping("/qlLoaiHang")
	public String qlLoaiHang(Model md) {
		String malh;
		do {
			String random =UUID.randomUUID().toString();
			malh = "LH"+ random.substring(0, 7);
		}while(serlh.exitLH(malh));
		LoaiHang lh = new LoaiHang();
		lh.setMaLoaiHang(malh);
		md.addAttribute("loaiHang", lh);
		
		return "view/loaihang";
		
		
	}
	@PostMapping("/createLH")
	public String createLH(@ModelAttribute("loaiHang")LoaiHang lh,@RequestParam ("tenThuocTinh")List<String> tt) {
		serlh.createlh(lh);
		tt.forEach(thuoctin ->{
			ThuocTinh thuoct = new ThuocTinh();
			String matt;
			do {
				String random =UUID.randomUUID().toString();
				matt = "TT"+ random.substring(0, 7);
			}while(sertt.exitTT(matt));
			thuoct.setMaThuocTinh(matt);
			thuoct.setTenThuocTinh(thuoctin);
			thuoct.setLh(lh);
			sertt.createTT(thuoct);
		});
		
		return "null";
	}
	
	
	@PostMapping("/updateU")
	public String updateU(Model md, @Valid @ModelAttribute ("usLog")NguoiDung nd,Errors er) {
		if (er.hasErrors()) {
			return "view/quanlyND";
	    }
	    try {
	        NguoiDung usmoi = ser.updateU(nd);
	        md.addAttribute("usLog",usmoi);
			md.addAttribute("listU", ser.list());
			return "view/quanlyND";
	    } catch (Exception e) {
	        md.addAttribute("errorMessage", "Cập nhật thất bại: " + e.getMessage());
	        return "redirect:/user/qlUser";
	    }
		
		
		
	}
	@GetMapping("/delete/{id}")
	public String deleteU(Model md,@PathVariable ("id")Integer id) {
		NguoiDung temps  = ses.get("usLog");
		if (temps.getMaNguoiDung().equals(id)) {
			md.addAttribute("deletefalse","Không thể xóa chính bạn");
			md.addAttribute("usLog", new NguoiDung());
			md.addAttribute("listU", ser.list());
			return "view/quanlyND";
		}else {
			try {
				ser.deleteND(id);
				return "redirect:/user/qlUser";
			} catch (Exception e) {
				md.addAttribute("deletefalse","Không thể xóa đối tượng vì còn tồn tại trong nhiều dữ liệu khác");
				md.addAttribute("usLog", new NguoiDung());
				md.addAttribute("listU", ser.list());
				return "view/quanlyND";
			}	
		}
		
		
		
		
		
	}
	@GetMapping("/edit/{id}")
	public String editU(Model md,@PathVariable ("id")Integer id) {
		md.addAttribute("usLog", ser.findById(id));
		md.addAttribute("listU", ser.list());
		
		return "view/quanlyND";
		
		
	}
	@GetMapping("/history")
	public String history(Model md) {
		NguoiDung dg = ses.get("usLog");
		md.addAttribute("ListLS", ser.findById(dg.getMaNguoiDung()).getListLichSu());
		return "view/LichSu";
		
		
	}
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute ("user") NguoiDung us,Errors er, Model md, @RequestParam("saveLog") Optional<String> saveLog) {
		if (ser.login(us) != null) {
			ses.set("usLog", ser.login(us));
			
			if (saveLog.orElse("false").equalsIgnoreCase("true")) {
				
				ck.add("username", us.getTenDangNhap(),10 *24*60*60 );
				ck.add("password", us.getMatKhau(),10 *24*60*60 );
			}else {
				
				ck.remove("username");
				ck.remove("password");
			}
			return "redirect:/home";
		}else {
			md.addAttribute("sai", "Sai thông tin đăng nhập");
			return "view/dangnhap";
		}
		
	}
	@GetMapping("/dangxuat")
	public String dangxuat() {
		
		ses.remove("usLog");
		
		return "redirect:/home";
	}
	
	@PostMapping("/update")
	public String updateuser(@Valid @ModelAttribute("usLog") NguoiDung us, BindingResult er, Model model) {
	    if (er.hasErrors()) {
	        return "view/profile";
	    }
	    try {
	        NguoiDung usmoi = ser.updateU(us);
	        ses.set("usLog", usmoi);
	        return "redirect:/user/profile";
	    } catch (Exception e) {
	        model.addAttribute("errorMessage", "Cập nhật thất bại: " + e.getMessage());
	        return "view/profile";
	    }
	}
	
}
