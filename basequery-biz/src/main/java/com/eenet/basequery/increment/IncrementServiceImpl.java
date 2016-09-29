package com.eenet.basequery.increment;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.base.query.Rank;

public class IncrementServiceImpl extends SimpleBizImpl implements IncrementService {

	@Override
	public SimpleResultSet<Increment> getIncrement(QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("orderNo");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		SimpleDateFormat formate = new SimpleDateFormat("yyyy-MM-dd");
		condition.addCondition(new ConditionItem("incrementDate",RangeType.EQUAL,formate.format(new Date()),""));
		return super.query(condition);
	}

	@Override
	public  Class<Increment> getPojoCLS() {
		return Increment.class;
	}

}
