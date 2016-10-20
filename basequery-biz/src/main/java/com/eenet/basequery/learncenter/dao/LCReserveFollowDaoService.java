package com.eenet.basequery.learncenter.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCReserveFollow;

public interface LCReserveFollowDaoService  {

	public  SimpleResultSet<LCReserveFollow> queryList(QueryCondition condition);
}
