package cn.tengfeistudio.math.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import cn.tengfeistudio.math.entity.Answer;

public interface AnswerService {
	
	// 显示图片
	public void showImg(HttpServletResponse response, String url);

	// 上传图片
	public String uploadImg(MultipartFile file);
	
	// 增加答案
	public boolean addAnswer(String a, String aimg, String b, String bimg, String c, String cimg, String d,
			String dimg,String e, String eimg, String f, String fimg, String solution, int questionid);
	
	//通过questionid删除Answer，用于html文件
	public void deleteAnswer(int questionid);
	
	//增加选项，用于html文件
	public void addAnswers(Answer answer);

	//查找所有答案，用于html文件
	public List<Answer> findAllAnswers();
	
	//通过id查找某个答案，用于html文件
	public Answer findAnswerById(int id);
	
	//通过id删除某个答案，用于html文件
	public void deleteAnswerById(int id);

}
