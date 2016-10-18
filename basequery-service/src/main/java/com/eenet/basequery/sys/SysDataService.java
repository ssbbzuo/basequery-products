package com.eenet.basequery.sys;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface SysDataService {
	
	/**
	 * 根据查询条件返回数据字典信息
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<SysData> query(QueryCondition condition);
	
	/**
	 * 根据类型编码返回对应的数据字典信息
	 * @param typeCode
	 * @return
	 */
	public SimpleResultSet<SysData> getByTypeCode(String typeCode);

}
