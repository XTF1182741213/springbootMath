package cn.tengfeistudio.math.controller;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.tengfeistudio.math.entity.Student;
import cn.tengfeistudio.math.service.StudentService;

@RestController
public class StudentController {
	
	@Resource
	StudentService studentService;
	
	//注册学生账号
	@RequestMapping(value="/registerStudent")
	public boolean createStudent(String user,String password,int teacherid,int parentid) {
		System.out.println("user:"+user);
		System.out.println("password:"+password);
		System.out.println("teacherid:"+teacherid);
		System.out.println("parentid:"+parentid);
		return studentService.registerStudent(user, password,teacherid,parentid);
	}
	
	//学生账号登录
	@RequestMapping(value="/loginStudent")
	public Student loginStudent(String user,String password) {
		return studentService.loginStudent(user, password);
	}
	//通过学生姓名user进行查找
	@RequestMapping(value="/getStudentByUser")
	public Student findStudent(String user) {
		System.out.println("搜索的学生名:"+user);
		return studentService.getStudent(user);
	}
	//保存测试分数和时间
	@RequestMapping(value="/saveScoreAndTime")
	public int saveScoreAndTime(double score,String time,String user)
	{
		return studentService.saveStudent(score, time, user);
	}

}
