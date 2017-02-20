package com.eenet.basequery.datareport;

import java.util.ArrayList;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.Rank;
import com.eenet.basequery.datareport.dao.DRStudentDataReportDaoService;

public class DRStudentDataReportServiceImpl extends SimpleBizImpl implements DRStudentDataReportService {
	
	private DRStudentDataReportDaoService drStudentDataReportDaoService;




	public DRStudentDataReportDaoService getDrStudentDataReportDaoService() {
		return drStudentDataReportDaoService;
	}

	public void setDrStudentDataReportDaoService(
			DRStudentDataReportDaoService drStudentDataReportDaoService) {
		this.drStudentDataReportDaoService = drStudentDataReportDaoService;
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
		return drStudentDataReportDaoService.queryList(condition);
	}

	@Override
	public SimpleResultSet<DRStudentDataReport> queryDetail(QueryCondition queryCondition) {
		System.out.println("------------------------queryDetail---------------");
		return null;
	}
	
	public Class<DRStudentDataReport> getPojoCLS() {
		return DRStudentDataReport.class;
	}
}
