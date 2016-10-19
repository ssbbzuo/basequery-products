package com.eenet.basequery.chart;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface ThemeFunnelReadCollegesService {

	/**
	 * 获取测试情况
	 * 
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<ThemeFunnelReadColleges> getTest(QueryCondition condition);	

}
