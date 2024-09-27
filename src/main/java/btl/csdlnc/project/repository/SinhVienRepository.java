package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.SinhVien;

@Repository
public interface SinhVienRepository extends JpaRepository<SinhVien, String> {

}
