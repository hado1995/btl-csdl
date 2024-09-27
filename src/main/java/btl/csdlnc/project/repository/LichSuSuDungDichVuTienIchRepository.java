package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.LichSuSuDungDichVuTienIch;

@Repository
public interface LichSuSuDungDichVuTienIchRepository extends JpaRepository<LichSuSuDungDichVuTienIch, Long> {

}
