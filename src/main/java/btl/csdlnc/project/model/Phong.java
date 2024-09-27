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
@Table(name = "phong")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Phong {
    @Id
    String maPhong;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    LoaiPhong loaiPhong;
    Long soNguoiToiDa;
    Long soNguoiHienTai;
    Double giaPhong;
    String moTaPhong;
    String ghiChu;
}
