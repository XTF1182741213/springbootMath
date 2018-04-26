package cn.tengfeistudio.math.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.tengfeistudio.math.entity.Parent;
import cn.tengfeistudio.math.service.ParentService;

@RestController
public class ParentController {
	
	@Resource
	ParentService parentService;
	
	//注册家长账号
	@RequestMapping(value="/registerParent")
	public boolean createParent(String user,String password) {
		return parentService.registerParent(user, password);
	}
	
	//家长账号登录
	@RequestMapping(value="/loginParent")
	public Parent loginTeacher(String user,String password) {
		return parentService.loginParent(user, password);
	}
	
	//查找所有家长
	@RequestMapping(value="/getAllParent")
	public List<Parent> getParentList(){
		return parentService.getAllParent();
	}
	


}
