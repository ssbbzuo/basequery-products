package com.eenet.basequery.datareport;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface DRStudentDataReportService {

	/**
	 * 获取学员数据呈报情况
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<DRStudentDataReport> query(QueryCondition condition);

	public SimpleResultSet<DRStudentDataReport> queryDetail(QueryCondition queryCondition);
}
