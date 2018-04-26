package cn.tengfeistudio.math.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import cn.tengfeistudio.math.entity.Answer;
import cn.tengfeistudio.math.entity.Question;
import cn.tengfeistudio.math.repository.AnswerRepository;
import cn.tengfeistudio.math.service.AnswerService;

@Component
public class AnswerServiceImpl implements AnswerService {
	@Autowired
	private AnswerRepository answerRepository;
	
	

	//展示图片
	@Override
	public void showImg(HttpServletResponse response, String url) {
		try {
			String s2 = new String(url.getBytes("ISO-8859-1"), "utf-8");
			OutputStream os = response.getOutputStream();
			System.out.println("s2是:" + s2);
			File file = new File("..\\math\\" + s2); // 图片存储路径
			FileInputStream fips = new FileInputStream(file);
			ByteArrayOutputStream bops = new ByteArrayOutputStream();
			int data = -1;
			while ((data = fips.read()) != -1) {
				bops.write(data);
			}
			byte[] btImg = bops.toByteArray();
			os.write(btImg);
			os.flush();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	//上传图片
	@Override
	public String uploadImg(MultipartFile file) {
		if (file != null) {
			String originalFilename = file.getOriginalFilename();
			//System.out.println("原文件名:"+originalFilename);
			String newFileName = "";
			String pic_path;
			if (originalFilename != null && originalFilename.length() > 0) {
				String tomcat_path = System.getProperty("user.dir");
				String bin_path = tomcat_path.substring(tomcat_path.lastIndexOf("\\") + 1, tomcat_path.length());
				if (("bin").equals(bin_path)) {
					pic_path = tomcat_path.substring(0, System.getProperty("user.dir").lastIndexOf("\\")) + "\\upload"+ "\\file\\";
				} else {
					pic_path = tomcat_path + "\\img\\";
				}
				//newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");// 设置日期格式
				String ctime = df.format(new Date()).toString();
				newFileName=ctime+""+originalFilename;
				System.out.println("上传图片的路径：" + pic_path + newFileName);
				File newFile = new File(pic_path + newFileName);
				try {
					file.transferTo(newFile); //临时路径
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return "https://www.tengfeistudio.cn/showImg?url=img/" + newFileName;
		} else {
			return null;
		}
	}
	
	
	//增加答案
		@Override
		public boolean addAnswer(String a, String aimg, String b, String bimg, String c, String cimg, String d, String dimg,
				String e, String eimg, String f, String fimg, String solution, int questionid) {
			Answer answer=new Answer();
			answer.setA(a);
			answer.setAimg(aimg);
			answer.setB(b);
			answer.setBimg(bimg);
			answer.setC(c);
			answer.setCimg(cimg);
			answer.setD(d);
			answer.setDimg(dimg);
			answer.setE(e);
			answer.setEimg(eimg);
			answer.setF(f);
			answer.setFimg(fimg);
			answer.setSolution(solution);
			Question question=new Question();
			question.setId(questionid);
			answer.setQuestion(question);
			
			try {
				answerRepository.save(answer);
				return true;
			} catch (Exception e1) {
				e1.printStackTrace();
				return false;
			}

		}

		@Override
		public List<Answer> findAllAnswers() {			
			return answerRepository.findAll();
		}

		@Override
		public Answer findAnswerById(int id) {		
			return answerRepository.findAnswerById(id);
		}

		@Override
		public void deleteAnswerById(int id) {
			answerRepository.deleteById(id);
			
		}

		@Override
		public void addAnswers(Answer answer) {
			answerRepository.save(answer);
			
		}

		@Override
		public void deleteAnswer(int questionid) {
			answerRepository.deletByQuestionid(questionid);
			
		}


}
