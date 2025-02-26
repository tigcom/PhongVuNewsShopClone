package Assignment_Java_5.Bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Id; 

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "LichSuMuaHang")
public class LichSuMuaHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer maLichSu;

    @ManyToOne
    @JoinColumn(name = "MaNguoiDung", nullable = false)
    NguoiDung nguoiDung;

    @Column(nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    Date ngayMua = new Date();

    @Column(nullable = false)
    Double tongTien;

    @OneToMany(mappedBy = "lichSuMuaHang", fetch = FetchType.EAGER)
    List<ChiTietLichSuMuaHang> chiTietLichSu = new ArrayList<>();
}
