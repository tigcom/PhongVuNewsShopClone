package Assignment_Java_5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import Assignment_Java_5.Bean.LoaiHang;

public interface LoaiHangDAO extends JpaRepository<LoaiHang, String> {
	
}
