package com.eenet.basequery.sales;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface SaleCustomerFollowService {
	
	/**
	 * 获取市场营销客户跟进详情
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<SaleCustomerFollow> query(QueryCondition condition);

}
