package com.eenet.basequery.sys;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;

public class SysDataServiceImpl extends SimpleBizImpl implements  SysDataService{

	@Override
	public SimpleResultSet<SysData> query(QueryCondition condition) {
		return super.query(condition);
	}

	@Override
	public SimpleResultSet<SysData> getByTypeCode(String typeCode) {
		QueryCondition condition = new QueryCondition();
		condition.addCondition(new ConditionItem("dictTypeCode",RangeType.EQUAL,typeCode,""));
		return super.query(condition);
	}

	@Override
	public Class<SysData> getPojoCLS() {
		return SysData.class;
	}

}
