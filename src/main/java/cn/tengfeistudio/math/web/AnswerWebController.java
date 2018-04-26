package cn.tengfeistudio.math.web;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Manager;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.service.AnswerService;

@Controller
public class AnswerWebController {

	@Resource
	AnswerService answerService;

	// 显示选项列表
	@RequestMapping("/listAnswers")
	public String listAnswer(Model model) {
		List<Answer> answers = answerService.findAllAnswers();
		model.addAttribute("answers", answers);
		return "/AnswerList";
	}

	// 增加选项
	@RequestMapping("/toAddAnswer")
	public String toAddAnswer() {
		return "/AnswerAdd";
	}

	// @RequestMapping("/addWebAnswer")
	// public String addAnswer(Answer answer) {
	// answerService.addAnswers(answer);
	// return "redirect:/listAnswers";
	// }

	@RequestMapping("/addWebAnswer")
	public String addAnswer(String a, String aimg, String b, String bimg, String c, String cimg, String d, String dimg,
			String e, String eimg, String f, String fimg, String solution, String questionid) {
		System.out.println("a是:" + a);
		System.out.println("aimg是:" + aimg);
		System.out.println("b是:" + b);
		System.out.println("bimg是:" + bimg);
		System.out.println("c是:" + c);
		System.out.println("cimg是:" + cimg);
		System.out.println("solution是:" + solution);
		System.out.println("questionid是:" + questionid);
		//如果有选项就先删除
		answerService.deleteAnswer(Integer.parseInt(questionid));
		//添加选项
		answerService.addAnswer(a, aimg, b, bimg, c, cimg, d, dimg, e, eimg, f, fimg, solution,
				Integer.parseInt(questionid));
		return "redirect:/listAnswers";
	}

	// 通过id查找某一项
	@RequestMapping("/toEditAnswer")
	public String toEditAnswer(Model model, int id) {
		Answer answer = answerService.findAnswerById(id);
		model.addAttribute("answer", answer);
		return "/AnswerEdit";
	}

	// 删除选项
	@RequestMapping("/deleteAnswer")
	public String deleteAnswer(int id) {
		answerService.deleteAnswerById(id);
		return "redirect:/listAnswers";
	}

	//上传图片
    @RequestMapping("uploadPage")
    public String uploadPage(){
        return "upload";
    }
    @RequestMapping("upload")
    @ResponseBody
    public String upload(MultipartFile file){
        //System.out.println("success");
        System.out.println("上传图片返回:" + answerService.uploadImg(file));
		return answerService.uploadImg(file);
    }
   

}
