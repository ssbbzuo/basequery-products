package com.eenet.basequery.learncenter.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.dao.BaseDAOImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.learncenter.LCReserveFollow;
import com.eenet.basequery.learncenter.dao.LCReserveFollowDaoService;
import com.eenet.util.EEBeanUtils;

public class LCReserveFollowDaoServiceImpl extends BaseDAOImpl implements LCReserveFollowDaoService {

	private String getNamespace(){
		return "com.eenet.basequery.learncenter.LCReserveFollow";
	}
	
	@Override
	public SimpleResultSet<LCReserveFollow> queryList(QueryCondition condition) {
		SimpleResultSet<LCReserveFollow> resultSet = new SimpleResultSet<LCReserveFollow>();
		Map<String,Object> sqlMap = genSqlMap(condition);
		/**计算总量**/
		Integer totalRecord = getBatisSession().selectOne(getNamespace()+".queryList_count", sqlMap);
		resultSet.setCount(totalRecord);
		/**获取本次查询数据**/
		List<LCReserveFollow> resultList =  getBatisSession().selectList(getNamespace()+".queryList", sqlMap);
		resultSet.setResultSet(resultList);
		return resultSet;
	}
	
	private Map<String,Object> genSqlMap(QueryCondition condition){
		Map<String,Object> sqlMap = new HashMap<String,Object>();
		sqlMap.put("startIndex", condition.getStartIndex());
		sqlMap.put("maxQuantity", condition.getMaxQuantity());
		List<ConditionItem> conditionList = condition.getConditions();
		for(ConditionItem item : conditionList){
			if(item.getRangeType().equals(RangeType.IN)){
				sqlMap.put(item.getFieldName(), item.getRangeFrom().split(","));
			}else{
				sqlMap.put(item.getFieldName(), item.getRangeFrom());
				if(!EEBeanUtils.isNULL(item.getRangeTo())){
					sqlMap.put(item.getFieldName()+"To", item.getRangeTo());
				}
			}
		}
		return sqlMap;
	}

}
