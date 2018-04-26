package cn.tengfeistudio.math.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Parent;
import cn.tengfeistudio.math.entity.Student;

@Repository("StudentRepsitory")
public interface StudentRepository extends JpaRepository<Student, Integer>{

	Student findByUserAndPassword(String user, String password);

	Student findByUser(String user);

	@Transactional
	@Modifying
	@Query("update Student s set s.score=?1,s.time=?2 where s.user=?3")
	int saveScoreAndTime(double score, String time,String user);



}
