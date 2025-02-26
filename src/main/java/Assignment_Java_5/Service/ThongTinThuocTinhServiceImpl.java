package Assignment_Java_5.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.ThongTinThuocTinh;
import Assignment_Java_5.DAO.ThongTinThuocTinhDAO;
import jakarta.transaction.Transactional;
@Service
public class ThongTinThuocTinhServiceImpl implements ThongTinThuocTinhService {
	@Autowired ThongTinThuocTinhDAO dao;
	@Override
	public ThongTinThuocTinh findById(Integer Id) {
		
		return dao.getById(Id);
	}
	@Override
	public void insertThongTin(ThongTinThuocTinh ttin) {
		dao.save(ttin);
		
	}
	@Override
	public ThongTinThuocTinh getBySPandTT(String id, Integer Id) {
		// TODO Auto-generated method stub
		return dao.findByTtMaThuocTinhAndSpMaSP(id, Id);
	}
	@Override
	 @Transactional
	public void deleteTT(Integer idsp) {
		dao.deleteAllBySp_MaSP(idsp);
		
	}

}
