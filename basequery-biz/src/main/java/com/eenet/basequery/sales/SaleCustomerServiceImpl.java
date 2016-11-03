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
import com.eenet.basequery.sales.dao.SaleCustomerDaoService;
import com.eenet.util.EEBeanUtils;

public class SaleCustomerServiceImpl extends SimpleBizImpl implements SaleCustomerService {

	private PriTreeService priTreeService;
	private SaleCustomerDaoService saleCustomerDaoService;
	
	public SaleCustomerDaoService getSaleCustomerDaoService() {
		return saleCustomerDaoService;
	}

	public void setSaleCustomerDaoService(SaleCustomerDaoService saleCustomerDaoService) {
		this.saleCustomerDaoService = saleCustomerDaoService;
	}

	public PriTreeService getPriTreeService() {
		return priTreeService;
	}

	public void setPriTreeService(PriTreeService priTreeService) {
		this.priTreeService = priTreeService;
	}

	@Override
	public SimpleResultSet<SaleCustomer> query(String curUserId,QueryCondition condition) {
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
				System.out.println(rangeFrom);
				condition.addCondition(new ConditionItem("staffId",RangeType.IN,rangeFrom,""));
			}
		}
		return saleCustomerDaoService.queryList(condition);
	}
	
	@Override
	public  Class<SaleCustomer> getPojoCLS() {
		return SaleCustomer.class;
	}
	
}
