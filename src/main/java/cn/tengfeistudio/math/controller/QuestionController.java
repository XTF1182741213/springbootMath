package cn.tengfeistudio.math.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.tengfeistudio.math.entity.Question;
import cn.tengfeistudio.math.service.QuestionService;

@RestController
public class QuestionController {
	@Resource
	QuestionService questionService;
	
	@RequestMapping(value="/getAllQuestion")
	public List<Question> getAllQuestion(){
	    return questionService.getAllQuestion();
	}

	//随机从数据库抽10道题目
	@RequestMapping(value="/getTenQuestion")
	public List<Question> getTenRandomQuestion(){
		return questionService.getQuestions();
	}
	
	//根据题目id删除
	@RequestMapping(value="/deleteById")
	public boolean deleteQuestion(int id) {
		return questionService.deleteQuestion(id);
	}
	
	//增加题目,返回题目的id
	@RequestMapping(value="/addQuestions")
	public int addQuestions(String describes, String describesimg) {
		return questionService.addQuestions(describes, describesimg);
	}
	
	
	//模糊查询
	@RequestMapping(value="/getQuestionByLike")
	public List<Question> getQuestionsByLikeDescribes(String describes){
		return questionService.getQuestionsByDescribes(describes);
	}
	
	//通过问题id查询
	@RequestMapping(value="/getQuestionById")
	public Question getQuestionById(int id) {
		return questionService.findQuestionById(id);
	}

}
