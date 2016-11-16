package com.eenet.basequery.chart.main;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface ThemeFunnelMainPieMonthService {

	/**
	 * 获取测试情况
	 * 
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<ThemeFunnelMainPieMonth> getTest(QueryCondition condition);	

}
