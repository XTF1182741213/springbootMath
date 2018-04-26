package cn.tengfeistudio.math.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.tengfeistudio.math.entity.Parent;
import cn.tengfeistudio.math.entity.Student;
import cn.tengfeistudio.math.entity.Teacher;
import cn.tengfeistudio.math.repository.StudentRepository;
import cn.tengfeistudio.math.service.StudentService;
@Component
public class StudentServiceImpl implements StudentService{
	
	@Autowired 
	StudentRepository studentRepository;

	//注册账号
	@Override
	public boolean registerStudent(String user, String password,int teacherid,int parentid) {
		Parent parent=new Parent();
		parent.setId(parentid);
		Teacher teacher=new Teacher();
		teacher.setId(teacherid);
		
		Student student=new Student();
		student.setUser(user);
		student.setPassword(password);
		student.setParent(parent);
		student.setTeacher(teacher);
		try {
			studentRepository.save(student);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	//登录账号
	@Override
	public Student loginStudent(String user, String password) {
		
		return studentRepository.findByUserAndPassword(user,password);
	}

	//通过学生姓名user进行查找
	@Override
	public Student getStudent(String user) {
		
		return studentRepository.findByUser(user);
	}

	//根据学生user保存时间time和分数score
	@Override
	public int saveStudent( double score, String time,String user) {
		System.out.println(score);
		System.out.println(time);
		System.out.println(user);
		return studentRepository.saveScoreAndTime(score,time,user);
	}

    
	

}
