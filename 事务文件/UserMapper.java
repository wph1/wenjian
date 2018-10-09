package com.geekcattle.mapper.console;

import java.util.List;

import com.geekcattle.model.console.Admin;
import com.geekcattle.model.console.SysUser;
import com.geekcattle.util.CustomerMapper;

public interface UserMapper extends CustomerMapper<SysUser>{

	/**
	 * 创建日期:2018年4月7日<br/>
	 * 代码创建:黄聪<br/>
	 * 功能描述:插入数据<br/>
	 * @param record
	 * @return
	 */
//    int insert(UserEntity record);
    
    /**
     * 创建日期:2018年4月7日<br/>
     * 代码创建:黄聪<br/>
     * 功能描述:获取所有的用户信息<br/>
     * @return
     */
    List<SysUser> getAll();
}