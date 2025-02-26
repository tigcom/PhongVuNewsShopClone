package Assignment_Java_5.Service;

import java.util.List;

import Assignment_Java_5.Bean.ChiTietLichSuMuaHang;

public interface ChiTietLichSuMuaHangService {
	List<ChiTietLichSuMuaHang> findAll();
	ChiTietLichSuMuaHang findById(Integer id);
	void creatCTLS(ChiTietLichSuMuaHang ctls);
}
