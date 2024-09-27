package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.Phong;

@Repository
public interface PhongRepository extends JpaRepository<Phong, String> {

}
