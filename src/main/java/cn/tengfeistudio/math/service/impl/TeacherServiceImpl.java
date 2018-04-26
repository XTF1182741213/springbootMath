package cn.tengfeistudio.math.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import cn.tengfeistudio.math.entity.Teacher;
import cn.tengfeistudio.math.repository.TeacherRepository;
import cn.tengfeistudio.math.service.TeacherService;
@Component
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	TeacherRepository teacherRepository;
	
    //老师账号注册
	@Override 
	public boolean registerTeacher(String user, String password) {
		Teacher teacher=new Teacher();
		teacher.setUser(user);
		teacher.setPassword(password);
		try {
			teacherRepository.save(teacher);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	//老师账号登录
	@Override
	public Teacher loginTeacher(String user, String password) {
		return teacherRepository.findByUserAndPassword(user,password);
	}

	@Override
	public List<Teacher> getAllTeacher() {
		
		return teacherRepository.findAll();
	}

}
