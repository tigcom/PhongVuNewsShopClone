package Assignment_Java_5.Service;

import java.util.List;

import Assignment_Java_5.Bean.LichSuMuaHang;

public interface LichSuMuaHangService {
	List<LichSuMuaHang> findAll();
	LichSuMuaHang findById(Integer id);
	void createHoaDon(LichSuMuaHang ls);
	
}
