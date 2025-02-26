package Assignment_Java_5.Bean;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "SanPham")
public class SanPham {
	@Id
	@GeneratedValue(strategy  = GenerationType.IDENTITY)
	Integer maSP;
	String tenSP;
	String moTa;
	Double sale;
	Double price;
	String title;

	String thongTinChiTiet;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "MaLoaiHang",nullable =  false)
	LoaiHang lh;
	
	@OneToMany(mappedBy = "sp",fetch = FetchType.EAGER)
	List<HinhAnh> listhinh = new ArrayList<>();
	
	@OneToMany(mappedBy = "sp",fetch = FetchType.EAGER)
	List<ThongTinThuocTinh> listtt = new ArrayList<>();
	
	
	
	
	
	@Transient
	public ThongTinThuocTinh getThuongHieu() {
		for (ThongTinThuocTinh tt : listtt) {
			if (tt.getTt().tenThuocTinh.equalsIgnoreCase("Thương hiệu")) {
				return tt;
			}
		}
		return  null;
	}
}
