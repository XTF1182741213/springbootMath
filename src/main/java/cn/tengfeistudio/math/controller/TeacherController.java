package cn.tengfeistudio.math.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.tengfeistudio.math.entity.Teacher;
import cn.tengfeistudio.math.service.TeacherService;

@RestController
public class TeacherController {
	@Resource
	TeacherService teacherService;
	
	//注册老师账号
	@RequestMapping(value="/registerTeacher")
	public boolean createTeacher(String user,String password) {
		return teacherService.registerTeacher(user, password);
	}
	
	//老师账号登录
	@RequestMapping(value="/loginTeacher")
	public Teacher loginTeacher(String user,String password) {
		return teacherService.loginTeacher(user, password);
	}
	
	//查找所有老师
	@RequestMapping(value="/getAllTeacher")
	public List<Teacher> getTeacherList(){
		return teacherService.getAllTeacher();
	}
}
