package com.eenet.basequery.learncenter;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface LCOrderInfoService {

	/**
	 * 获取订单(报读)情况
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<LCOrderInfo> query(String curUserId,QueryCondition condition);
}
