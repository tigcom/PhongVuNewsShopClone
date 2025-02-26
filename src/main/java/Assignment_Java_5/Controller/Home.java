package Assignment_Java_5.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.Bean.SanPham;
import Assignment_Java_5.Service.LoaiHangService;
import Assignment_Java_5.Service.SanPhamService;
import Assignment_Java_5.Service.SessionService;
import Assignment_Java_5.Service.ThongTinThuocTinhService;
import Assignment_Java_5.Service.ThuocTinhService;


@Controller
@RequestMapping({"/home","/home/{pageNumber}"})
public class Home {
	@Autowired SanPhamService utilSP;
	@Autowired SessionService ses;
	@Autowired LoaiHangService utilLH;
	@Autowired ThongTinThuocTinhService utilTTTT;
	@Autowired ThuocTinhService utilTT;
	NguoiDung usLog = ses != null ? ses.get("usLog"): new NguoiDung();

	
	@RequestMapping
	public String home(Model md,@PathVariable ("pageNumber") Optional<Integer> pageNumber,
			@RequestParam("pagecheck") Optional<Integer> pageCk,
			@RequestParam("dkcheck") Optional<String> dkcheck,
			@RequestParam("styleSort") Optional<String> styleSort) {		
		int number = pageNumber.orElse(0);
		Double check = (utilSP.sizeList() /10);
		if (check < Math.ceil(check)) {			
			check = (double) Math.ceil(check);
		}
		if (styleSort.orElse(null) == null||styleSort.orElse(null).equals("1")) {
			System.out.println("trong này ");
			md.addAttribute("listsp", utilSP.pageSanPham((number > 0 ? number - 1: 0),dkcheck.orElse("Price"),Optional.empty()));
		}else if (styleSort.orElse(null).equals("2")) {
			number = pageCk.orElse(null);
			md.addAttribute("listsp", utilSP.pageSanPham(pageCk.orElse(null),dkcheck.orElse("Price"),Optional.of(true)));
		}else if (styleSort.orElse(null).equals("3")) {
			number = pageCk.orElse(null);
			md.addAttribute("listsp", utilSP.pageSanPham(pageCk.orElse(null),dkcheck.orElse("Price"),Optional.of(false)));
		}else {
			md.addAttribute("listsp", utilSP.pageSanPham((number > 0 ? number - 1: 0),dkcheck.orElse("Price"),Optional.empty()));
		}
		
		md.addAttribute("next",Math.round(check));
		if (number == 0 || number ==1) {
			md.addAttribute("previousF","cursor-not-allowed");
		}else if (number == check) {
			md.addAttribute("nextF","cursor-not-allowed");
		}
		md.addAttribute("dkcheck", dkcheck.orElse(null));
		md.addAttribute("styleSort", styleSort.orElse(null));
		System.out.println("pagecheck: "+pageCk.orElse(null));
		System.out.println("dkcheck: "+dkcheck.orElse(null));
		System.out.println("styleSort: "+styleSort.orElse(null));
		pageCk.orElse(number);
		
		int pagee = number == check ? number - 1 : (number ==0 || number == 1 ? 2 : number);
		
		md.addAttribute("pagecheck", number);
		md.addAttribute("listLH",utilLH.findAll() );
		md.addAttribute("pageNumber", pagee);
		return "share/home";
	}

	
	@GetMapping("/createSP/{id}")
	public String createLaptop(Model md,@PathVariable("id")String id ) {
		md.addAttribute("listSp", utilSP.findAll());
		md.addAttribute("listLH",utilLH.findAll());
		md.addAttribute("loaihang",utilLH.findBy(id));
		md.addAttribute("sp",new SanPham());
		md.addAttribute("crudSP", "view/createSanPham");
		return "layout/layoutCRUDSP";
	}
	
	@GetMapping("/chitiet/{id}")
	public String createApple(Model md,@PathVariable("id")Integer id) {
		md.addAttribute("sp",utilSP.findID(id));
		md.addAttribute("listsp", utilSP.listSame(utilSP.findID(id).getLh()));
		return "view/chitietsp";
	}
	@GetMapping("/filterMenu")
	public String filterMenu(Model md,@RequestParam("mThuocTinh")String mThuocTinh,@RequestParam("giaTri")String giaTri) {

		md.addAttribute("listsp", utilSP.ListFilterMenu(mThuocTinh, giaTri));
		md.addAttribute("utilTT",utilTT.findById(mThuocTinh));
		md.addAttribute("giaTri",giaTri);
		return "view/ketQua";
	}
	@GetMapping("/filterLoaiHang")
	public String filterLoaiHang(Model md,@RequestParam("mloaiHang")String mloaiHang) {

		md.addAttribute("listsp",utilSP.listSame(utilLH.findBy(mloaiHang)));
		md.addAttribute("utilTT",utilLH.findBy(mloaiHang).getListtt().get(0));
		return "view/ketQua";
	}
}
