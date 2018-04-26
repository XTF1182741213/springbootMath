package cn.tengfeistudio.math.service;

import java.util.List;

import cn.tengfeistudio.math.entity.Question;

public interface QuestionService {

	 //得到所有题目
	public List<Question> getAllQuestion();
	
	
	//得10条题目
	public List<Question> getQuestions();
	
	//删除题目
	public boolean deleteQuestion(int id);
	
	//增加题目,返回id
	public int addQuestions(String describes,String describesimg);
	
	//通过题目关键字搜索
	public List<Question> getQuestionsByDescribes(String describes);
	
	//增加题目,用于html文件
	public void saveQuestion(Question question);
	
	//修改题目,用于html文件
	public void editQuestion(Question question);
	
	//通过id查找,用于html文件
	public Question findQuestionById(int id);

}
