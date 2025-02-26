package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.ChiTietLichSuMuaHang;
import Assignment_Java_5.DAO.ChiTietLichSuMuaHangDAO;

@Service
public class ChiTietLichSuMuaHangServiceImpl  implements ChiTietLichSuMuaHangService{
	@Autowired ChiTietLichSuMuaHangDAO dao;
	@Override
	public List<ChiTietLichSuMuaHang> findAll() {
		return dao.findAll();
	}

	@Override
	public ChiTietLichSuMuaHang findById(Integer id) {
		return dao.getById(id);
	}

	@Override
	public void creatCTLS(ChiTietLichSuMuaHang ctls) {
		dao.save(ctls);
		
	}
	
}
