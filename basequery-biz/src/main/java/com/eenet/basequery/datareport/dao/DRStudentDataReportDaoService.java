package com.eenet.basequery.datareport.dao;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.datareport.DRStudentDataReport;

public interface DRStudentDataReportDaoService  {

	public  SimpleResultSet<DRStudentDataReport> queryList(QueryCondition condition);
}
