package com.eenet.basequery.sales.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.sales.SaleCustomerFollow;

public interface SaleCustomerFollowDaoService  {

	public  SimpleResultSet<SaleCustomerFollow> queryList(QueryCondition condition);
}
