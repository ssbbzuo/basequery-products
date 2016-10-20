package com.eenet.basequery.learncenter.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCOrderInfo;

public interface LCOrderInfoDaoService  {

	public  SimpleResultSet<LCOrderInfo> queryList(QueryCondition condition);
}
