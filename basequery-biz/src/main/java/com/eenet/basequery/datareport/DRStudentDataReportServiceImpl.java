package com.eenet.basequery.datareport;

import java.util.ArrayList;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;
import com.eenet.basequery.pri.PriTreeService;

public class DRStudentDataReportServiceImpl extends SimpleBizImpl implements DRStudentDataReportService {

	private PriTreeService priTreeService;

	public PriTreeService getPriTreeService() {
		return priTreeService;
	}

	public void setPriTreeService(PriTreeService priTreeService) {
		this.priTreeService = priTreeService;
	}
	
	@Override
	public SimpleResultSet<DRStudentDataReport> query(QueryCondition condition) {
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
	public Class<DRStudentDataReport> getPojoCLS() {
		return DRStudentDataReport.class;
	}

}
