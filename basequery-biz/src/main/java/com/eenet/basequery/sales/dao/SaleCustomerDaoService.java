package com.eenet.basequery.sales.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.sales.SaleCustomer;

public interface SaleCustomerDaoService  {

	public  SimpleResultSet<SaleCustomer> queryList(QueryCondition condition);
}
