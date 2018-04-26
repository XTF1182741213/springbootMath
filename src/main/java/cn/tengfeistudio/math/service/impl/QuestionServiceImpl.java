package cn.tengfeistudio.math.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Question;
import cn.tengfeistudio.math.repository.QuestionRepository;
import cn.tengfeistudio.math.service.QuestionService;

@Component
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	QuestionRepository questionRepository;

	@Override
	public List<Question> getAllQuestion() {
		return questionRepository.findAll();
	}

	@Override
	public List<Question> getQuestions() {

		return questionRepository.findRandTenQuestion();
	}

	@Override
	public boolean deleteQuestion(int id) {

		try {
			questionRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int addQuestions(String describes, String describeimgs) {
		Question question = new Question();
		question.setDescribes(describes);
		question.setDescribesimg(describeimgs);
		return questionRepository.save(question).getId();
	}

	@Override
	public List<Question> getQuestionsByDescribes(String describes) {
		
		return questionRepository.findByLikeDescribes(describes);
	}

	@Override
	public void saveQuestion(Question question) {
		questionRepository.save(question);
		
	}

	@Override
	public void editQuestion(Question question) {
		questionRepository.save(question);
		
	}

	@Override
	public Question findQuestionById(int id) {
		
		return questionRepository.findQuestionById(id);
	}
	
	
	
	

}
