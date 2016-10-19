package com.eenet.basequery.chart;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.QueryCondition;

public class ThemeFunnelFllowLearnCenterServiceImpl extends SimpleBizImpl implements ThemeFunnelFllowLearnCenterService {

	@Override
	public SimpleResultSet<ThemeFunnelFllowLearnCenter> getTest(QueryCondition condition) {
		/*if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("year");			
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}*/
		return super.query(condition);
	}

	@Override
	public Class<ThemeFunnelFllowLearnCenter> getPojoCLS() {
		return ThemeFunnelFllowLearnCenter.class;
	}


}
