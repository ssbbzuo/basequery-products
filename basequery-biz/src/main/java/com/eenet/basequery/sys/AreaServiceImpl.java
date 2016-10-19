package com.eenet.basequery.sys;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;

public class AreaServiceImpl extends SimpleBizImpl implements AreaService{
	
	public SimpleResultSet<Area> getProvinces() {
		QueryCondition condition = new QueryCondition();
		String areaLevel = "1";//第一层级
		condition.addCondition(new ConditionItem("areaLevel", RangeType.EQUAL, areaLevel, ""));
		return super.query(condition);
	}

	public SimpleResultSet<Area> getByPCode(String pCode) {
		QueryCondition condition = new QueryCondition();
		condition.addCondition(new ConditionItem("parentCode", RangeType.EQUAL, pCode, ""));
		return super.query(condition);
	}

	@Override
	public Area get(String pk) {
		return super.get(pk);
	}

	@Override
	public SimpleResultSet<Area> query(QueryCondition condition) {
		return super.query(condition);
	}

	@Override
	public  Class<Area> getPojoCLS() {
		return Area.class;
	}

}
