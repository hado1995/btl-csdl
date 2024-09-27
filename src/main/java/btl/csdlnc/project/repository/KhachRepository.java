package btl.csdlnc.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import btl.csdlnc.project.model.Khach;

@Repository
public interface KhachRepository extends JpaRepository<Khach, Long> {

}
