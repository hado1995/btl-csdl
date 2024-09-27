package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.DichVuTienIch;

@Repository
public interface DichVuTienIchRepository extends JpaRepository<DichVuTienIch, Long> {

}
