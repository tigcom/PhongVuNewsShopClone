package Assignment_Java_5.Bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "ThongTinThuocTinh")
public class ThongTinThuocTinh {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer maThongTinThuocTinh;
	String giaTri;

	@ManyToOne
	@JoinColumn(name = "MaThuocTinh",nullable =  false)
	ThuocTinh tt;
	
	@ManyToOne
	@JoinColumn(name = "MaSP",nullable =  false)
	SanPham sp;
	

}
