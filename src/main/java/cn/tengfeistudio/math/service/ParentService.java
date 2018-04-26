package cn.tengfeistudio.math.service;

import java.util.List;

import cn.tengfeistudio.math.entity.Parent;


public interface ParentService {
	
	//注册Parent账号
	public boolean registerParent(String user,String password);
	
	//登录Parent
	public Parent loginParent(String user,String password);
	
	//查找所有家长
	public List<Parent> getAllParent();

}
