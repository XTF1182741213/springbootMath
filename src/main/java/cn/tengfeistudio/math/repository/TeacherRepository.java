package cn.tengfeistudio.math.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Parent;
import cn.tengfeistudio.math.entity.Teacher;

@Repository("TeacherRepsitory")
public interface TeacherRepository extends JpaRepository<Teacher, Integer>{

	Teacher findByUserAndPassword(String user, String password);

}
