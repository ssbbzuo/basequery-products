package com.eenet.basequery.learncenter.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCReserveOrder;

public interface LCReserveOrderDaoService  {

	public  SimpleResultSet<LCReserveOrder> queryList(QueryCondition condition);
}
