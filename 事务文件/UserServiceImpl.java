package com.geekcattle.service.console;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.geekcattle.mapper.console.UserMapper;
import com.geekcattle.model.console.SysUser;

/**
 * 创建日期:2018年4月7日<br/>
 * 代码创建:黄聪<br/>
 * 功能描述:<br/>
 */
@Service
public class UserServiceImpl {

	@Resource
	private UserMapper userDao;
	
//	@Transactional
	public void insert(SysUser record) {
		// TODO Auto-generated method stub
		int id = userDao.insert(record);
		int a = 1/0;
//		return id;
	}

	public List<SysUser> getAll() {
		// TODO Auto-generated method stub
		return userDao.getAll();
	}
}
