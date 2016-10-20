package com.eenet.basequery.learncenter;

import java.util.ArrayList;
import java.util.List;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.base.query.Rank;
import com.eenet.basequery.learncenter.dao.LCReserveOrderDaoService;
import com.eenet.basequery.pri.PriTreeService;
import com.eenet.basequery.pri.PrivilegeType;
import com.eenet.util.EEBeanUtils;

public class LCReserveOrderServiceImpl extends SimpleBizImpl implements LCReserveOrderService {
	
	private PriTreeService priTreeService;
	private LCReserveOrderDaoService lcReserveOrderDaoService;
	
	public LCReserveOrderDaoService getLcReserveOrderDaoService() {
		return lcReserveOrderDaoService;
	}

	public void setLcReserveOrderDaoService(LCReserveOrderDaoService lcReserveOrderDaoService) {
		this.lcReserveOrderDaoService = lcReserveOrderDaoService;
	}

	public PriTreeService getPriTreeService() {
		return priTreeService;
	}

	public void setPriTreeService(PriTreeService priTreeService) {
		this.priTreeService = priTreeService;
	}

	public SimpleResultSet<LCReserveOrder> query(String curUserId,QueryCondition condition) {
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
				condition.addCondition(new ConditionItem("marketerId",RangeType.IN,rangeFrom,""));
				condition.addCondition(new ConditionItem("salemanId",RangeType.IN,rangeFrom,""));
				condition.addCondition(new ConditionItem("headTeacherId",RangeType.IN,rangeFrom,""));
			}
		}
		return lcReserveOrderDaoService.queryList(condition);
	}

	@Override
	public Class<LCReserveOrder> getPojoCLS() {
		return LCReserveOrder.class;
	}

}
