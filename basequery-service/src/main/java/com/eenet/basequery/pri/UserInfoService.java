package com.eenet.basequery.pri;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.pri.UserInfo;

public interface UserInfoService {
	/**
	 * 获取用户列表
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<UserInfo> getUserInfo(QueryCondition condition);
	/**
	 * 获取用户
	 * @param condition
	 * @return
	 */
	public  UserInfo getUserInfoByPK(String pk);
	
	/**
	 * 增加用户
	 * @param condition
	 * @return
	 */
	public UserInfo save(UserInfo m);
	
	
}
