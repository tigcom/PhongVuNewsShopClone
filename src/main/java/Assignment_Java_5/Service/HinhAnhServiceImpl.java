package Assignment_Java_5.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.HinhAnh;
import Assignment_Java_5.DAO.HinhAnhDAO;
import jakarta.transaction.Transactional;
@Service
public class HinhAnhServiceImpl implements HinhAnhService {
	@Autowired HinhAnhDAO dao;
	@Override
	public void insertHA(HinhAnh ha) {
		 dao.save(ha);
	}
	@Override
	 @Transactional
	public void deleteHA(Integer idsp) {
		dao.deleteAllBySp_MaSP(idsp);
		
	}

}
