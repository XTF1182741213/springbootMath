package cn.tengfeistudio.math.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.tengfeistudio.math.entity.Parent;
import cn.tengfeistudio.math.entity.Student;
import cn.tengfeistudio.math.repository.ParentRepository;
import cn.tengfeistudio.math.service.ParentService;
@Component
public class ParentServiceImpl implements ParentService{
	
	@Autowired
	ParentRepository parentRepository;

	@Override
	public boolean registerParent(String user, String password) {
		Parent parent=new Parent();
		parent.setUser(user);
		parent.setPassword(password);
		try {
			parentRepository.save(parent);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public Parent loginParent(String user, String password) {
		
		return parentRepository.findByUserAndPassword(user,password);
	}

	@Override
	public List<Parent> getAllParent() {
	
		return parentRepository.findAll();
	}

}
