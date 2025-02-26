package Assignment_Java_5.Service;

import java.util.List;
import java.util.Optional;

import Assignment_Java_5.Bean.LoaiHang;
import Assignment_Java_5.Bean.SanPham;

public interface SanPhamService {
	List<SanPham> pageSanPham (int id,String field,Optional<Boolean> sort);
	SanPham  findID(Integer id);
	List<SanPham> listSame (LoaiHang lh);
	List<SanPham> ListFilterMenu (String mThongTintt,String giaTri);
	Double sizeList();
	List<SanPham> findAll ();
	SanPham insertSP(SanPham sp);
	
}
