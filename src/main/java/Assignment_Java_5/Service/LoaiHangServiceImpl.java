package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.LoaiHang;
import Assignment_Java_5.DAO.LoaiHangDAO;
@Service
public class LoaiHangServiceImpl implements LoaiHangService {
	@Autowired LoaiHangDAO DAO;
	@Override
	public List<LoaiHang> findAll() {
			
		return DAO.findAll();
	}
	@Override
	public LoaiHang findBy(String id) {
		return DAO.getById(id);
	}
	@Override
	public Boolean exitLH(String id) {
		return DAO.existsById(id);
	}
	@Override
	public void createlh(LoaiHang lh) {
		DAO.save(lh);
		
	}

}
