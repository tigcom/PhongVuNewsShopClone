package Assignment_Java_5.Service;

import java.util.List;

import Assignment_Java_5.Bean.ThuocTinh;

public interface ThuocTinhService  {
	ThuocTinh findById(String id);
	ThuocTinh findThuocTinhCreate(String tenThuocTinh);
	Boolean exitTT(String id);
	void createTT(ThuocTinh tt);
}
