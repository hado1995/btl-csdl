package btl.csdlnc.project.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "veXeThang")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class VeXeThang {
    @Id
    String bienSoXe;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    SinhVien sinhVien;
    String loaiXe;
    String mauSon;
    String nhanHieu;
    String SoMay;
    String soKhung;
    String ghiChu;
}
