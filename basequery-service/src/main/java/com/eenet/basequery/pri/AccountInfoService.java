package com.eenet.basequery.pri;

import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface AccountInfoService {
	/**
	 * 获取账户列表
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<AdminUserLoginAccount> getAccountInfo(QueryCondition condition);
	/**
	 * 获取账户
	 * @param condition
	 * @return
	 */
	public  AdminUserLoginAccount getAccountInfoByPK(String pk);
	
	/**
	 * 增加账户
	 * @param condition
	 * @return
	 */
	public AdminUserLoginAccount save(AdminUserLoginAccount m, boolean isAdd);
	
	
}
