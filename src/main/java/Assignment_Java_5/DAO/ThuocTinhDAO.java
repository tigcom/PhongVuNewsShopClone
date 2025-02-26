package Assignment_Java_5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import Assignment_Java_5.Bean.ThuocTinh;
import java.util.List;


public interface ThuocTinhDAO extends JpaRepository<ThuocTinh, String>{
	List<ThuocTinh> findByTenThuocTinh(String tenThuocTinh);
}
