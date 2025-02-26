package Assignment_Java_5.Controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import Assignment_Java_5.Bean.ChiTietLichSuMuaHang;
import Assignment_Java_5.Bean.HinhAnh;
import Assignment_Java_5.Bean.LichSuMuaHang;
import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.Bean.SanPham;
import Assignment_Java_5.Bean.ThongTinThuocTinh;
import Assignment_Java_5.Service.ChiTietLichSuMuaHangService;
import Assignment_Java_5.Service.HinhAnhService;
import Assignment_Java_5.Service.LichSuMuaHangService;
import Assignment_Java_5.Service.LoaiHangService;
import Assignment_Java_5.Service.MailService;
import Assignment_Java_5.Service.SanPhamService;
import Assignment_Java_5.Service.SessionService;
import Assignment_Java_5.Service.ThongTinThuocTinhService;
import Assignment_Java_5.Service.ThuocTinhService;
import Assignment_Java_5.Service.UploadFileService;
import jakarta.servlet.annotation.MultipartConfig;

@MultipartConfig
@Controller
@RequestMapping({"/sanpham"})
public class SanPhamController {
	@Autowired SanPhamService utilSP;
	@Autowired SessionService ses;
	@Autowired LoaiHangService utilLH;
	@Autowired ThongTinThuocTinhService utilTTTT;
	@Autowired ThuocTinhService utilTT;
	@Autowired HinhAnhService utilHA;
	@Autowired LichSuMuaHangService utilLS;
	@Autowired ChiTietLichSuMuaHangService utilCTLS;
	@Autowired MailService mail;
	@Autowired UploadFileService upload;
	NguoiDung usLog = (ses != null ? ses.get("usLog"): new NguoiDung());

	Map<SanPham, Integer> gioHang = ses != null ? ses.get("gioHang") : new HashMap<>();
	@PostMapping("/create/amthanh")
	public String createAmThanh(@RequestPart("images") MultipartFile[] files,Model md,@ModelAttribute ("sp")SanPham sp, @RequestParam("giaTri")List <String> giaTri,@RequestParam("thuocTinh")List <String> thuocTinh) {
		this.insertSp(sp, files, giaTri, thuocTinh);
		
		return "redirect:/home/chitiet/"+sp.getMaSP();
	}
	
	public void insertSp (SanPham sp,MultipartFile[] files,List <String> giaTri ,List <String> thuocTinh) {
		utilSP.insertSP(sp);
		List <String> lImage = upload.save(files);
		lImage.forEach(ha -> {
			HinhAnh hha = new HinhAnh();
			hha.setSp(sp);
			hha.setDuongDanHinh(ha);
			
			utilHA.insertHA(hha);
		});
		for(int i = 0 ; i < giaTri.size();i++) {
			ThongTinThuocTinh ttin = new ThongTinThuocTinh();
			ttin.setGiaTri(giaTri.get(i));
			ttin.setSp(sp);
			ttin.setTt(utilTT.findById(thuocTinh.get(i)));
			utilTTTT.insertThongTin(ttin);
		}
	}
	@PostMapping("/create/sanpham")
	public String createManHinh(@RequestPart("images") MultipartFile[] files,Model md,@ModelAttribute ("sp")SanPham sp,
			@RequestParam("giaTri")List <String> giaTri,@RequestParam("thuocTinh")List <String> thuocTinh) {
		if (sp.getMaSP()== null) {
			this.insertSp(sp, files, giaTri, thuocTinh);
		}else if (sp.getMaSP() != null){
			utilHA.deleteHA(sp.getMaSP());
			utilTTTT.deleteTT(sp.getMaSP());
			SanPham getanh = utilSP.findID(sp.getMaSP());
			sp.setListhinh(getanh.getListhinh());
			this.insertSp(sp, files, giaTri, thuocTinh);
		}
	
		return "redirect:/home/chitiet/"+sp.getMaSP();
	}
	
	@GetMapping("/giohang")
	public String shopping(Model md) {
		LichSuMuaHang ls =this.hoadon();
		System.out.println(ls.getNgayMua()+"ngyamua");
		md.addAttribute("hoadon", ls);
		md.addAttribute("gioHang", gioHang);
		return "view/giohang";
	}
	@GetMapping("/giohang/add/{id}")
	public String shopping(Model md,@PathVariable ("id")Integer id) {
		Boolean checkEx =false;
		SanPham sp = new SanPham();
		int sl =1;
		if(!gioHang.isEmpty()) {
			for (Map.Entry<SanPham, Integer> entry : gioHang.entrySet()) {
		        if (entry.getKey().getMaSP().equals(id)) {
		            checkEx = true;
		            sp = entry.getKey();
		            sl =entry.getValue();
		            break;
		        }
		    }
		}
		if (checkEx) {
			gioHang.remove(sp);
			gioHang.put(utilSP.findID(id), sl+1);
		}else {
			gioHang.put(utilSP.findID(id), 1);
		}
		
		ses.set("gioHang", gioHang);
		
		return "redirect:/sanpham/giohang";
	}
	@PostMapping("/giohang/cong")
	public String congsl(@RequestParam ("sanpham") Integer id,@RequestParam("sl")Integer sl) {
		SanPham sp1 = new SanPham();
		for (Map.Entry<SanPham, Integer> entry : gioHang.entrySet()) {
	        if (entry.getKey().getMaSP().equals(id)) {
	        	sp1 = entry.getKey();
	            break;
	        }
	    }
		gioHang.remove(sp1);
		gioHang.put(sp1, sl+1);
		return "redirect:/sanpham/giohang";
	}
	@PostMapping("/giohang/tru")
	public String trusl(@RequestParam ("sanpham") Integer id,@RequestParam("sl")Integer sl) {
		SanPham sp1 = new SanPham();
		boolean checksl =false;
		for (Map.Entry<SanPham, Integer> entry : gioHang.entrySet()) {
	        if (entry.getKey().getMaSP().equals(id)) {
	        	sp1 = entry.getKey();
	        	if (entry.getValue()==1) {
	        		checksl =true;
	        	}
	            break;
	        }
	    }
		gioHang.remove(sp1);
		if(!checksl) {
			gioHang.put(sp1, sl-1);
		}
		return "redirect:/sanpham/giohang";
	}
	public LichSuMuaHang hoadon() {
		
		LichSuMuaHang ls = new LichSuMuaHang();
		ls.setNguoiDung( ses.get("usLog"));
		double tt =0;
		for (Map.Entry<SanPham, Integer> entry : gioHang.entrySet()) {
	        tt+= entry.getValue() * entry.getKey().getPrice();
	    }
		ls.setTongTien(tt);
		return ls;
	}
	@GetMapping("/thanhtoan")
	public String pay(Model md) {
		LichSuMuaHang hd = this.hoadon();
		utilLS.createHoaDon(hd);
		gioHang.forEach((hang,soluong) ->{
			ChiTietLichSuMuaHang cts = new ChiTietLichSuMuaHang();
			cts.setGiaBan(hang.getPrice() * hang.getSale());
			cts.setLichSuMuaHang(hd);
			cts.setSanPham(hang);
			cts.setSoLuong(soluong);
			utilCTLS.creatCTLS(cts);
		});
		mail.sendOrder(hd);
		gioHang.clear();
		return "redirect:/user/history";
	}
	@GetMapping("/edit/{id}")
	public String getMethodName(Model md,@PathVariable("id")Integer id) {
		ThongTinThuocTinh tt= utilTTTT.getBySPandTT("TT005", 7);
		System.out.println(tt.getMaThongTinThuocTinh()+tt.getGiaTri());
		md.addAttribute("listSp", utilSP.findAll());
		md.addAttribute("listLH",utilLH.findAll());
		md.addAttribute("loaihang",utilSP.findID(id).getLh());
		md.addAttribute("sp",utilSP.findID(id));
		md.addAttribute("crudSP", "view/createSanPham");
		return "layout/layoutCRUDSP";
	}
	
}
