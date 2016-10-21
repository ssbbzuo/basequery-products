package com.eenet.basequery.pri;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.baseinfo.user.AdminUserInfo;

public interface UserInfoService {
	/**
	 * 获取用户列表
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<AdminUserInfo> getUserInfo(QueryCondition condition);
	/**
	 * 获取用户
	 * @param condition
	 * @return
	 */
	public  AdminUserInfo getUserInfoByPK(String pk);
	
	/**
	 * 增加用户
	 * @param condition
	 * @return
	 */
	public AdminUserInfo save(AdminUserInfo m ,boolean isAdd);
}
