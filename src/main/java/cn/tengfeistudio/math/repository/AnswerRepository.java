package cn.tengfeistudio.math.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.tengfeistudio.math.entity.Answer;

@Repository("AnswerRepsitory")
public interface AnswerRepository extends JpaRepository<Answer, Integer>{

	Answer findAnswerById(int id);

	//根据questionid删除answer
	@Modifying
	@Transactional
	@Query(value="delete from answer where questionid = ?1",nativeQuery = true)
	int deletByQuestionid(int questionid);


}
