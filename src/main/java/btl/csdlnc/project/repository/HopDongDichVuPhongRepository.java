package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.HopDongDichVuPhong;

@Repository
public interface HopDongDichVuPhongRepository extends JpaRepository<HopDongDichVuPhong, Long> {

}
