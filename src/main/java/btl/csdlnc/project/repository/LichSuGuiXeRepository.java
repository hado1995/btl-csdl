package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.LichSuGuiXe;

@Repository
public interface LichSuGuiXeRepository extends JpaRepository<LichSuGuiXe, Long> {

}
