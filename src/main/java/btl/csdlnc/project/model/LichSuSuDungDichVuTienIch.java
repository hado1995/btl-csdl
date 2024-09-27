package btl.csdlnc.project.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
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
@Table(name = "lichSuSuDungDichVuTienIch")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class LichSuSuDungDichVuTienIch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long maLichSu;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    SinhVien sinhVien;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    DichVuTienIch dichVuTienIch;
    Double donGia;
    Long soLuong;
    String ngaySuDung;
    String ghiChu;
}
