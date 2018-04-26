package cn.tengfeistudio.math.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.tengfeistudio.math.entity.Question;

@Repository("QuestionRepsitory")
public interface QuestionRepository extends JpaRepository<Question, Integer>{

	//从数据库中随机抽10条数据
	@Transactional
	@Query(value="SELECT * FROM question q ORDER BY RAND() LIMIT 10", nativeQuery = true)
	List<Question> findRandTenQuestion();

	//通过关键字进行模糊查询
	@Query(value="select * from question q where q.describes like CONCAT('%',:describes,'%')",nativeQuery=true)
	List<Question> findByLikeDescribes(@Param("describes")String describes);

	Question findQuestionById(int id);



}
