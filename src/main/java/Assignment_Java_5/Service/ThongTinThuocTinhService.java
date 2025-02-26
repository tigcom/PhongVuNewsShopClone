package Assignment_Java_5.Service;

import Assignment_Java_5.Bean.ThongTinThuocTinh;

public interface ThongTinThuocTinhService {
	ThongTinThuocTinh findById(Integer Id);
	ThongTinThuocTinh getBySPandTT(String id,Integer Id);
	void insertThongTin (ThongTinThuocTinh ttin);
	void deleteTT(Integer idsp) ;
}
