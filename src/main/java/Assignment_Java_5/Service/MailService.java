package Assignment_Java_5.Service;

import java.text.DecimalFormat;

import Assignment_Java_5.Bean.LichSuMuaHang;
import Assignment_Java_5.Bean.NguoiDung;
import lombok.Builder;
import lombok.Builder.Default;
import lombok.Data;

public interface MailService {
	void send(MailModel mailModel);
	
	default void send(String to, String subject, String body) {
		MailModel mail = MailModel.builder().to(to).subject(subject).body(body).build();
		this.send(mail);
	}
	default void sendWelcome() {
		
	}
	default void sendPassword(NguoiDung nd) {
		MailModel mail = MailModel.builder().to(nd.getEmail()).subject("PHONG VŨ THÔNG BÁO: TẠO TÀI KHOẢN THÀNH CÔNG").body("Chào mừng "+nd.getHoTen()+" đến với Phong Vũ. Mật khẩu của bạn là :"+nd.getMatKhau()+", không chia sẻ cho bất kỳ ai.").build();
		this.send(mail);
	}
	default void sendOrder(LichSuMuaHang ls) {
		System.out.println("chạy send oder từ interface và gọi send");
		DecimalFormat df2 = new DecimalFormat("#,###.##");
		MailModel mail = MailModel.builder().to(ls.getNguoiDung().getEmail()).subject("PHONG VŨ THÔNG BÁO: THANH TOÁN THÀNH CÔNG").body(ls.getNguoiDung().getHoTen()+" vừa thanh toán thành công đơn hàng :"+df2.format(ls.getTongTien())+"Thời gian: "+ls.getNgayMua()).build();
		this.send(mail);
	}
	
	
	@Builder
	@Data
	public static class MailModel{
		@Default
		String from = "PHONG VŨ <phungvu@gmail.vn>";
		String to, cc, bcc, subject, body, filenames;
	}
}
