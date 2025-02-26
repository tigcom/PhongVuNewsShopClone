package Assignment_Java_5.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import Assignment_Java_5.Bean.LoaiHang;
import Assignment_Java_5.Bean.SanPham;
import Assignment_Java_5.DAO.SanPhamDAO;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	@Autowired SanPhamDAO DAO;
	@Override
	public List<SanPham> pageSanPham(int pageNumber,String field,Optional<Boolean> sortt) {	
		Pageable page;
		if (sortt.orElse(null)== null) {
			page = PageRequest.of(pageNumber,10);
		}else {
			Sort sort = sortt.orElse(null) ? Sort.by(Direction.DESC, field): Sort.by(Direction.ASC, field);
			page = PageRequest.of(pageNumber,10,sort);
			
		}
		
		return   DAO.findAll(page).getContent();
	}
	@Override
	public SanPham findID(Integer id) {
		
		return DAO.getById(id);
	}
	@Override
	public List<SanPham> listSame( LoaiHang lh) {
		Pageable page = PageRequest.of(0,5);
		Page<SanPham> list = DAO.findByLh(lh,page);
		List<SanPham> products = list.getContent();
	        return products;
	}
	@Override
	public Double sizeList() {
		
		return (double) DAO.findAll().size();
	}
	@Override
	public List<SanPham> ListFilterMenu(String mThongTintt, String giaTri) {
		
		return DAO.FindByMaThuocTinhAndGiaTrii(mThongTintt, giaTri);
	}
	@Override
	public SanPham insertSP(SanPham sp) {
		DAO.save(sp);
		return DAO.getById(sp.getMaSP());
	}
	@Override
	public List<SanPham> findAll() {
		
		return DAO.findAll();
	}

}
