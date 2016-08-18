package com.eenet.basequery.increment;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface IncrementService {

	/**
	 * 获取系统增量情况
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<Increment> getIncrement(QueryCondition condition);
}
