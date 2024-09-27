package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.VeXeThang;

@Repository
public interface VeXeThangRepository extends JpaRepository<VeXeThang, String> {

}
