package com.eenet.basequery.chart;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface ThemeFunnelReadLearnCenterUserService {

	/**
	 * 获取测试情况
	 * 
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<ThemeFunnelReadLearnCenterUser> getTest(QueryCondition condition);	

}
