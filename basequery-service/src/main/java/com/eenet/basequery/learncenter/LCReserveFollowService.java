package com.eenet.basequery.learncenter;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface LCReserveFollowService {

	/**
	 * 获取预报读跟踪情况
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<LCReserveFollow> query(String curUserId,QueryCondition condition);
}
