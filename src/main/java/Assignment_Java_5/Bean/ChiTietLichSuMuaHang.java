package Assignment_Java_5.Bean;

import java.math.BigDecimal;

import jakarta.persistence.Id; 


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "ChiTietLichSuMuaHang")
public class ChiTietLichSuMuaHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer maChiTietLichSu;

    @ManyToOne
    @JoinColumn(name = "MaLichSu", nullable = false)
    LichSuMuaHang lichSuMuaHang;

    @ManyToOne
    @JoinColumn(name = "MaSP", nullable = false)
    SanPham sanPham;

    @Column(nullable = false)
    Integer soLuong;

    @Column(nullable = false)
    Double giaBan;
}
