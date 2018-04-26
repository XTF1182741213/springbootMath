package cn.tengfeistudio.math.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tengfeistudio.math.entity.Question;
import cn.tengfeistudio.math.service.QuestionService;

@Controller
public class QuestionWebController {
	@Resource
	QuestionService questionService;
	
	//跳转到listQuestion
	@RequestMapping("/")
	public String index() {
		return "redirect:/listQuestions";
	}
	
	//问题列表的实现
	@RequestMapping("/listQuestions")
	public String list(Model model) {
		List<Question> questions=questionService.getAllQuestion();
		model.addAttribute("questions",questions);
		return "/QuestionList";
	}
	
	//通过关键字搜索题目
	@RequestMapping("/searchQuestions")
    public String list(Model model,String describes) {
		System.out.println("describes是:"+describes);
		List<Question> questions=questionService.getQuestionsByDescribes(describes);
		model.addAttribute("questions", questions);
		return "/QuestionListSearch";
	}
	//跳转到AddQuestion
	@RequestMapping("/toAddQuestion")
	public String toAddQuestion() {
		return "/QuestionAdd";
	}
	//增加题目的实现,跳转到问题列表
	@RequestMapping("/addQuestion")
	public String addQuestion(Question question) {
		questionService.saveQuestion(question);
		return "redirect:/listQuestions";
	}
	//跳转到修改题目页面editQuestion
	@RequestMapping("/toEditQuestion")
	public String toEditQuestion(Model model,int id) {
		Question question=questionService.findQuestionById(id);
		model.addAttribute("question",question);
		return "/QuestionEdit";
	}
	//题目修改的实现，删除后跳到问题列表
	@RequestMapping("/editQuestion")
	public String editQuestion(Question question) {
		questionService.editQuestion(question);
		return "redirect:/listQuestions";
	}
	//删除题目，删除后跳到问题列表
	@RequestMapping("/deleteQuestion")
	public String deleteQuestion(int id) {
		questionService.deleteQuestion(id);
		return "redirect:/listQuestions";
	}

}
