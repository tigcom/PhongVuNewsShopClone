package Assignment_Java_5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import Assignment_Java_5.Bean.ThongTinThuocTinh;

public interface ThongTinThuocTinhDAO extends JpaRepository<ThongTinThuocTinh, Integer> {
	ThongTinThuocTinh findByTtMaThuocTinhAndSpMaSP(String maThuocTinh, Integer maSP);
	@Modifying 
	@Query("DELETE FROM ThongTinThuocTinh i WHERE i.sp.maSP = ?1")
	void deleteAllBySp_MaSP(Integer maSP);
}
