package com.eenet.basequery.chart;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.QueryCondition;

public class ThemeFunnelSellLearnCenterUserServiceImpl extends SimpleBizImpl implements ThemeFunnelSellLearnCenterUserService {

	@Override
	public SimpleResultSet<ThemeFunnelSellLearnCenterUser> getTest(QueryCondition condition) {
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
	public Class<ThemeFunnelSellLearnCenterUser> getPojoCLS() {
		return ThemeFunnelSellLearnCenterUser.class;
	}


}
