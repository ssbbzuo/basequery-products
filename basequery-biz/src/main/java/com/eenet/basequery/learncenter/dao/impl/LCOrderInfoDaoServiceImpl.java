package com.eenet.basequery.learncenter.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.dao.BaseDAOImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.learncenter.LCOrderInfo;
import com.eenet.basequery.learncenter.dao.LCOrderInfoDaoService;
import com.eenet.util.EEBeanUtils;

public class LCOrderInfoDaoServiceImpl extends BaseDAOImpl implements LCOrderInfoDaoService {

	private String getNamespace(){
		return "com.eenet.basequery.learncenter.LCOrderInfo";
	}
	
	@Override
	public SimpleResultSet<LCOrderInfo> queryList(QueryCondition condition) {
		SimpleResultSet<LCOrderInfo> resultSet = new SimpleResultSet<LCOrderInfo>();
		Map<String,Object> sqlMap = genSqlMap(condition);
		/**计算总量**/
		Integer totalRecord = getBatisSession().selectOne(getNamespace()+".queryList_count", sqlMap);
		resultSet.setCount(totalRecord);
		/**获取本次查询数据**/
		List<LCOrderInfo> resultList =  getBatisSession().selectList(getNamespace()+".queryList", sqlMap);
		resultSet.setResultSet(resultList);
		getBatisSession().clearCache();
		return resultSet;
	}
	
	private Map<String,Object> genSqlMap(QueryCondition condition){
		Map<String,Object> sqlMap = new HashMap<String,Object>();
		sqlMap.put("startIndex", condition.getStartIndex());
		sqlMap.put("maxQuantity", condition.getMaxQuantity());
		List<ConditionItem> conditionList = condition.getConditions();
		for(ConditionItem item : conditionList){
			if(item.getRangeType().equals(RangeType.IN)){
				sqlMap.put(item.getFieldName(), genRangeINList(item.getRangeFrom()));
			}else{
				sqlMap.put(item.getFieldName(), item.getRangeFrom());
				if(!EEBeanUtils.isNULL(item.getRangeTo())){
					sqlMap.put(item.getFieldName()+"To", item.getRangeTo());
				}
			}
		}
		return sqlMap;
	}
	
	private List<String> genRangeINList(String inStr){
		List<String> rangeINList = new ArrayList<String>();
		if(!EEBeanUtils.isNULL(inStr)){
			String[] inStrs = inStr.split(",");
			for(String str : inStrs){
				rangeINList.add(str.trim());
			}
		}
		return rangeINList;
	}

}
