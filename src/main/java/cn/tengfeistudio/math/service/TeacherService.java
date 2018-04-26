package cn.tengfeistudio.math.service;

import java.util.List;

import cn.tengfeistudio.math.entity.Teacher;

public interface TeacherService {
	//注册Teacher账号
	public boolean registerTeacher(String user,String password);
	
	//登录老师账号
	public Teacher loginTeacher(String user,String password);
	
	//查找所有老师
	public List<Teacher> getAllTeacher();

}
