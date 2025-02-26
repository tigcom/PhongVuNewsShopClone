package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.LichSuMuaHang;
import Assignment_Java_5.DAO.LichSuMuaHangDAO;
@Service
public class LichSuMuaHangServiceImpl implements LichSuMuaHangService {
@Autowired LichSuMuaHangDAO dao;
	@Override
	public List<LichSuMuaHang> findAll() {
		return dao.findAll();
	}

	@Override
	public LichSuMuaHang findById(Integer id) {
		return dao.getById(id);
	}

	@Override
	public void createHoaDon(LichSuMuaHang ls) {
		dao.save(ls);
	}

}
