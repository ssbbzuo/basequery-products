package com.eenet.basequery.learncenter.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.dao.BaseDAOImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.learncenter.LCReserveOrder;
import com.eenet.basequery.learncenter.dao.LCReserveOrderDaoService;
import com.eenet.util.EEBeanUtils;

public class LCReserveOrderDaoServiceImpl extends BaseDAOImpl implements LCReserveOrderDaoService {

	private String getNamespace(){
		return "com.eenet.basequery.learncenter.LCReserveOrder";
	}
	
	@Override
	public SimpleResultSet<LCReserveOrder> queryList(QueryCondition condition) {
		SimpleResultSet<LCReserveOrder> resultSet = new SimpleResultSet<LCReserveOrder>();
		Map<String,Object> sqlMap = genSqlMap(condition);
		/**计算总量**/
		Integer totalRecord = getBatisSession().selectOne(getNamespace()+".queryList_count", sqlMap);
		resultSet.setCount(totalRecord);
		/**获取本次查询数据**/
		List<LCReserveOrder> resultList =  getBatisSession().selectList(getNamespace()+".queryList", sqlMap);
		resultSet.setResultSet(resultList);
		getBatisSession().clearCache();
		return resultSet;
	}
	
	private Map<String,Object> genSqlMap(QueryCondition condition){
		Map<String,Object> sqlMap = new HashMap<String,Object>();
		/*分页*/
		sqlMap.put("startIndex", condition.getStartIndex());
		sqlMap.put("maxQuantity", condition.getMaxQuantity());
		/*排序*/
		List<OrderBy>  orderList = condition.getOrderBySet();
		StringBuffer buffer = new StringBuffer();
		for(OrderBy order : orderList){
			buffer.append(order.getAttName()).append("  ").append(order.getRank().name()).append(",");
		}
		sqlMap.put("orderByString", buffer.toString().substring(0,buffer.toString().length()-1));
		/*查询条件*/
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
