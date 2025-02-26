package Assignment_Java_5.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import Assignment_Java_5.Bean.NguoiDung;
import Assignment_Java_5.DAO.NguoiDungDAO;

public interface NguoiDungService {
	List<NguoiDung> list ();
	NguoiDung login (NguoiDung nd);
	NguoiDung updateU(NguoiDung nd);
	NguoiDung findById(Integer id);
	void createND(NguoiDung nd);
	void deleteND(Integer id);
	void updateND(NguoiDung nd);
}
