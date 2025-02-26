package Assignment_Java_5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import Assignment_Java_5.Bean.HinhAnh;

public interface HinhAnhDAO extends JpaRepository<HinhAnh, Integer> {
	@Modifying 
	@Query("DELETE FROM HinhAnh i WHERE i.sp.maSP = ?1")
	void deleteAllBySp_MaSP(Integer idsp);
}
