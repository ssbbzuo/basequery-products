package com.eenet.basequery.learncenter;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface LCStudentService {

	/**
	 * 获取学员情况
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<LCStudent> query(QueryCondition condition);
}
