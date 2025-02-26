package Assignment_Java_5.Service;

import java.util.List;

import Assignment_Java_5.Bean.LoaiHang;

public interface LoaiHangService {
	List<LoaiHang> findAll();
	LoaiHang findBy (String id);
	Boolean exitLH(String id);
	void createlh (LoaiHang lh);
}
