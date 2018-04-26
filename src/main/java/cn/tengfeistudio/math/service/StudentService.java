package cn.tengfeistudio.math.service;

import cn.tengfeistudio.math.entity.Student;

public interface StudentService {
	//注册Student账号
	public boolean registerStudent(String user,String password,int teacherid,int parentid);
	
	//登录学生账号
	public Student loginStudent(String user,String password);
	
	//通过学生姓名user进行查找
	public Student getStudent(String user);
	
	//根据学生user保存时间time和分数score
	public int saveStudent(double score,String time,String user);

}
