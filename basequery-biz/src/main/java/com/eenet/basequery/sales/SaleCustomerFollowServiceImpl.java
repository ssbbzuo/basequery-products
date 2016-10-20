package com.eenet.basequery.sales;

import java.util.ArrayList;
import java.util.List;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.base.query.Rank;
import com.eenet.basequery.pri.PriTreeService;
import com.eenet.basequery.pri.PrivilegeType;
import com.eenet.basequery.sales.dao.SaleCustomerFollowDaoService;
import com.eenet.util.EEBeanUtils;

public class SaleCustomerFollowServiceImpl extends SimpleBizImpl implements SaleCustomerFollowService {

	private PriTreeService priTreeService;
	private SaleCustomerFollowDaoService saleCustomerFollowDaoService;
	
	public SaleCustomerFollowDaoService getSaleCustomerFollowDaoService() {
		return saleCustomerFollowDaoService;
	}

	public void setSaleCustomerFollowDaoService(SaleCustomerFollowDaoService saleCustomerFollowDaoService) {
		this.saleCustomerFollowDaoService = saleCustomerFollowDaoService;
	}

	public PriTreeService getPriTreeService() {
		return priTreeService;
	}

	public void setPriTreeService(PriTreeService priTreeService) {
		this.priTreeService = priTreeService;
	}
	@Override
	public SimpleResultSet<SaleCustomerFollow> query(String curUserId,QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("createdDt");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		if(!EEBeanUtils.isNULL(curUserId)){
			List<String> priTreeList = priTreeService.getPriTreeByType(curUserId, PrivilegeType.STAFFPRI);
			if(priTreeList!=null&&!priTreeList.isEmpty()){
				String rangeFrom = priTreeList.toString().substring(1, priTreeList.toString().length()-1);
				condition.addCondition(new ConditionItem("operatorId",RangeType.IN,rangeFrom,""));
			}
		}
		return saleCustomerFollowDaoService.queryList(condition);
	}
	
	@Override
	public  Class<SaleCustomerFollow> getPojoCLS() {
		return SaleCustomerFollow.class;
	}

}
