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
@Table(name = "lichSuGuiXe")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class LichSuGuiXe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long maLuotGui;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    VeXeThang veXeThang;
    String bienSoXe;
    String gioGui;
    String gioLay;
    Boolean mienPhi;
    Double giaTien;
    String ghiChu;
}
