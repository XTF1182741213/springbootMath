package cn.tengfeistudio.math.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Parent;

@Repository("ParentRepsitory")
public interface ParentRepository extends JpaRepository<Parent, Integer>{

	Parent findByUserAndPassword(String user, String password);

}
