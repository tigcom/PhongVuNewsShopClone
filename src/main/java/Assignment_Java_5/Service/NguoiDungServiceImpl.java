package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.DAO.NguoiDungDAO;

@Service
public class NguoiDungServiceImpl implements NguoiDungService {
	@Autowired NguoiDungDAO DAO;
	@Override
	public List<NguoiDung> list() {		
		return DAO.findAll();
	}
	@Override
	public NguoiDung login(NguoiDung nd) {
		NguoiDung temp = DAO.findByTenDangNhapAndMatKhau(nd.getTenDangNhap(),nd.getMatKhau());
		return temp ;
	}
	@Override
	public NguoiDung updateU(NguoiDung nd) {
		return DAO.save(nd);
	}
	@Override
	public NguoiDung findById(Integer id) {
		return DAO.getById(id);
	}
	@Override
	public void createND(NguoiDung nd) {
		DAO.save(nd);
		
	}
	@Override
	public void deleteND(Integer id) {
		DAO.deleteById(id);
		
	}
	@Override
	public void updateND(NguoiDung nd) {
		DAO.save(nd);
		
	}
	

}
