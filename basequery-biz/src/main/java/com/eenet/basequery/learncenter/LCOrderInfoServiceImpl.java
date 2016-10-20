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
import com.eenet.basequery.learncenter.dao.LCOrderInfoDaoService;
import com.eenet.basequery.pri.PriTreeService;
import com.eenet.basequery.pri.PrivilegeType;
import com.eenet.util.EEBeanUtils;

public class LCOrderInfoServiceImpl extends SimpleBizImpl implements LCOrderInfoService {

	private PriTreeService priTreeService;
	private LCOrderInfoDaoService lcOrderInfoDaoService;
	
	public LCOrderInfoDaoService getLcOrderInfoDaoService() {
		return lcOrderInfoDaoService;
	}

	public void setLcOrderInfoDaoService(LCOrderInfoDaoService lcOrderInfoDaoService) {
		this.lcOrderInfoDaoService = lcOrderInfoDaoService;
	}

	public PriTreeService getPriTreeService() {
		return priTreeService;
	}

	public void setPriTreeService(PriTreeService priTreeService) {
		this.priTreeService = priTreeService;
	}

	@Override
	public SimpleResultSet<LCOrderInfo> query(String curUserId,QueryCondition condition) {
		if(condition.getOrderBySet()== null ||condition.getOrderBySet().isEmpty()){
			ArrayList<OrderBy> orderList = new ArrayList<OrderBy>();
			OrderBy order = new OrderBy();
			order.setAttName("createdDt");
			order.setRank(Rank.DESC);
			orderList.add(order);
			condition.setOrderBySet(orderList);
		}
		if(!EEBeanUtils.isNULL(curUserId)){
			/**查询数据权限--用户**/
			List<String> priTreeList = priTreeService.getPriTreeByType(curUserId, PrivilegeType.STAFFPRI);
			if(priTreeList!=null&&!priTreeList.isEmpty()){
				String rangeFrom = priTreeList.toString().substring(1,priTreeList.toString().length()-1);
				condition.addCondition(new ConditionItem("learncenterUserId",RangeType.IN,rangeFrom,""));
			}
			/**查询数据权限--学习中心**/
			List<String> learncenterPriTreeList = priTreeService.getPriTreeByType(curUserId, PrivilegeType.LEARNCENTERPRI);
			if(learncenterPriTreeList!=null&&!learncenterPriTreeList.isEmpty()){
				String rangeFrom = learncenterPriTreeList.toString().substring(1,learncenterPriTreeList.toString().length()-1);
				condition.addCondition(new ConditionItem("learncenterId",RangeType.IN,rangeFrom,""));
			}
		}
		return lcOrderInfoDaoService.queryList(condition);
	}

	@Override
	public Class<LCOrderInfo> getPojoCLS() {
		return LCOrderInfo.class;
	}

}
