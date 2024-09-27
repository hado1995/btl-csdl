package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.HopDongThuePhong;

@Repository
public interface HopDongThuePhongRepository extends JpaRepository<HopDongThuePhong, Long> {

}
