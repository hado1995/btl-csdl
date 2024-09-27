package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.LoaiPhong;

@Repository
public interface LoaiPhongRepository extends JpaRepository<LoaiPhong, Long> {

}
