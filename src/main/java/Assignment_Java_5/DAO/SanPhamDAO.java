package Assignment_Java_5.DAO;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import Assignment_Java_5.Bean.LoaiHang;
import Assignment_Java_5.Bean.SanPham;
@Repository
public interface SanPhamDAO extends JpaRepository<SanPham, Integer> {
	
	@Query(value = "select sp from SanPham sp where sp.lh = ?1")
	List<SanPham> findByLh(LoaiHang lh);
	@Query(value = "select sp from SanPham sp where sp.lh = ?1")
	Page<SanPham> findByLh(LoaiHang lh,Pageable page);
	
	
	
	@Query("SELECT sp FROM SanPham sp JOIN sp.listtt ttin WHERE ttin.tt.maThuocTinh = ?1 AND ttin.giaTri = ?2")
	List<SanPham> FindByMaThuocTinhAndGiaTrii(String maThuocTinh,  String giaTri);

}
