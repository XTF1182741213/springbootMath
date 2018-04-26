package cn.tengfeistudio.math.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Question;
import cn.tengfeistudio.math.service.AnswerService;

@RestController
public class AnswerController {

	@Resource
	AnswerService answerService;

	// 增加答案
	@RequestMapping(value = "/addAnswer")
	public boolean addAnswers(String a, String aimg, String b, String bimg, String c, String cimg, String d,
			String dimg, String e, String eimg, String f, String fimg, String solution, int questionid) {
		return answerService.addAnswer(a, aimg, b, bimg, c, cimg, d, dimg, e, eimg, f, fimg, solution, questionid);

	}
	
	@RequestMapping(value="/getAllAnswer")
	public List<Answer> getAnswers(){
		return answerService.findAllAnswers();
	}

	@RequestMapping(value = "/showImg") // 显示图片
	public void showImgs(HttpServletResponse response, String url) {
		answerService.showImg(response, url);
	}

	@RequestMapping(value = "/uploadImg") // 上传图片
	public String uploadImgs(MultipartFile file) {
		return answerService.uploadImg(file);
	}
}
