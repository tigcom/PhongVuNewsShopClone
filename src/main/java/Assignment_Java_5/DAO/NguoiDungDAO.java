package Assignment_Java_5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Assignment_Java_5.Bean.NguoiDung;
import java.util.List;

@Repository
public interface NguoiDungDAO extends JpaRepository<NguoiDung, Integer> {
	NguoiDung findByTenDangNhapAndMatKhau(String tenDangNhap, String matKhau); 
	
}
