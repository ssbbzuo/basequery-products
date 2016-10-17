package com.eenet.basequery.sales;

import java.util.ArrayList;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;

public class SaleCustomerFollowServiceImpl extends SimpleBizImpl implements SaleCustomerFollowService {

	@Override
	public SimpleResultSet<SaleCustomerFollow> query(QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("createdDt");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		return super.query(condition);
	}
	
	@Override
	public  Class<SaleCustomerFollow> getPojoCLS() {
		return SaleCustomerFollow.class;
	}

}
