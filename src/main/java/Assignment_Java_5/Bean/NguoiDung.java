package Assignment_Java_5.Bean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "NguoiDung", uniqueConstraints = {
    @UniqueConstraint(name = "UK_TenDangNhap", columnNames = "TenDangNhap"),
    @UniqueConstraint(name = "UK_Email", columnNames = "Email")
})
public class NguoiDung implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaNguoiDung")
    private Integer maNguoiDung;

    @Column(name = "TenDangNhap", nullable = false, unique = true)
    @NotBlank(message = "Tên đăng nhập không thể để trống")
    @Size(max = 10, message = "Tên đăng nhập không được vượt quá 10 ký tự")
    private String tenDangNhap;

    @Column(name = "MatKhau", nullable = false)
    @NotBlank(message = "Mật khẩu không thể để trống")
    @Size(min = 5, message = "Mật khẩu tối thiểu 5 mý tự, không được vượt quá 10 ký tự",max=10)
    private String matKhau;

    @Column(name = "HoTen")
    @NotBlank(message = "Họ tên không thể để trống")
    @Size(max = 30, message = "Họ tên không được vượt quá 30 ký tự")
    private String hoTen;

    @Column(name = "Email", unique = true)
    @Email(message = "Địa chỉ email không hợp lệ")
    @NotBlank(message = "Email không thể để trống")
    @Size(max = 50, message = "Email không được vượt quá 50 ký tự")
    private String email;

    @Column(name = "SoDienThoai")
    @NotBlank(message = "Số điện thoại không thể để trống")
    @Size(max = 10,min=10, message = "Số điện thoại phải đủ 10 ký tự")
    private String soDienThoai;

    @Column(name = "VaiTro", nullable = false)
    private Boolean vaiTro;

    @OneToMany(mappedBy = "nguoiDung", fetch = FetchType.EAGER)
    private List<LichSuMuaHang> listLichSu = new ArrayList<>();
}
