package com.eenet.basequery.pri;

import java.util.ArrayList;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;

public class UserInfoServiceImpl  extends SimpleBizImpl implements UserInfoService  {

	@Override
	public SimpleResultSet<UserInfo> getUserInfo(QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("crdt");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		return super.query(condition);
	}
	
	
	
	@Override
	public UserInfo getUserInfoByPK(String pk) {
		return super.get(pk);
	}
	
	@Override
	public UserInfo  save(UserInfo m){
		return super.save(m);
	}
	
	
	
	
	
	

	@Override
	public Class<UserInfo> getPojoCLS() {
		return UserInfo.class;
	}
	public static void main(String[] args) {
		Integer a = new Integer(-1);
		
		System.out.println(a);
		System.out.println(a!=-1);
	}

	

	

}
