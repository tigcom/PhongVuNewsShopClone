package Assignment_Java_5.Bean;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

@Entity
@Table(name = "LoaiHang")
public class LoaiHang {
	@Id
	String maLoaiHang;
	String tenLoaiHang;
	String hinhanh;
	@OneToMany(mappedBy = "lh", fetch = FetchType.EAGER)
	List<SanPham> listsp= new ArrayList<>();
	
	@OneToMany(mappedBy = "lh", fetch = FetchType.EAGER)
	List<ThuocTinh> listtt = new ArrayList<>();
	
	@Transient
	public ThuocTinh getThuocTinhByTen(String ten) {
		for(ThuocTinh tt : listtt) {
			if (tt.getTenThuocTinh().equalsIgnoreCase(ten)) {
				return tt;
			}
		}
		return null;
		
	}
}
