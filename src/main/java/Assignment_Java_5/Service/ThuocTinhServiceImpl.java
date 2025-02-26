package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.ThuocTinh;
import Assignment_Java_5.DAO.ThuocTinhDAO;
@Service
public class ThuocTinhServiceImpl  implements ThuocTinhService{
	
	@Autowired ThuocTinhDAO dao;
	@Override
	public ThuocTinh findById(String id) {
		return dao.getById(id);
	}
	@Override
	public ThuocTinh findThuocTinhCreate(String tenThuocTinh) {
		return dao.findByTenThuocTinh(tenThuocTinh).get(0);
	}
	@Override
	public Boolean exitTT(String id) {
		// TODO Auto-generated method stub
		return dao.existsById(id);
	}
	@Override
	public void createTT(ThuocTinh tt) {
		dao.save(tt);
		
	}

}
