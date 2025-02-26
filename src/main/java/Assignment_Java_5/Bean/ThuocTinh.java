package Assignment_Java_5.Bean;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import java.util.stream.Collectors;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
@Table(name = "ThuocTinh")
public class ThuocTinh {
	@Id
	String maThuocTinh;
	String tenThuocTinh;

	@ManyToOne
	@JoinColumn(name = "MaLoaiHang",nullable =  false)
	LoaiHang lh;
	
	@OneToMany(mappedBy = "tt", fetch = FetchType.LAZY)
	List<ThongTinThuocTinh> listThongTin= new ArrayList<>();
	@Transient
	public List<ThongTinThuocTinh> getDistinctThongTin() {
		
	    TreeSet<ThongTinThuocTinh> uniqueSet = new TreeSet<>(new Comparator<ThongTinThuocTinh>() {
	        @Override
	        public int compare(ThongTinThuocTinh t1, ThongTinThuocTinh t2) {
	        	
	            String key1 = t1.getTt().getMaThuocTinh() + "_" + t1.getGiaTri();
	            String key2 = t2.getTt().getMaThuocTinh() + "_" + t2.getGiaTri();
	            return key1.compareTo(key2);
	        }
	    });

	    for (ThongTinThuocTinh info : listThongTin) {
	        uniqueSet.add(info);
	    }

	    return new ArrayList<>(uniqueSet);
	}
	
}
	