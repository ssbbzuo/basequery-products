package com.eenet.basequery.platform;

import java.util.ArrayList;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;

public class PFStudentDynaServiceImpl extends SimpleBizImpl implements PFStudentDynaService {

	@Override
	public SimpleResultSet<PFStudentDyna> getPFStudentDyna(QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("studentName");
			order.setRank(Rank.DESC);
			orderList.add(order);
			OrderBy order2 = new OrderBy();
			order2.setAttName("createdDt");
			order2.setRank(Rank.DESC);
			orderList.add(order2);
			condition.setOrderBySet(orderList);
		}
		return super.query(condition);
	}

	@Override
	public  Class<PFStudentDyna> getPojoCLS() {
		// TODO Auto-generated method stub
		return PFStudentDyna.class;
	}

}
