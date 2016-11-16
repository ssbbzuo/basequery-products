package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainBarYear extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String DIM_MONTH;// 本年月份
	private String COUNT_STUDENT;// 学员数
	private String COUNT_ORDER;// 订单数
	private Integer currentCount;
	private Integer pageSize;
	public Integer getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(Integer currentCount) {
		this.currentCount = currentCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public String getDIM_MONTH() {
		return DIM_MONTH;
	}
	public void setDIM_MONTH(String dIM_MONTH) {
		DIM_MONTH = dIM_MONTH;
	}
	public String getCOUNT_STUDENT() {
		return COUNT_STUDENT;
	}
	public void setCOUNT_STUDENT(String cOUNT_STUDENT) {
		COUNT_STUDENT = cOUNT_STUDENT;
	}
	public String getCOUNT_ORDER() {
		return COUNT_ORDER;
	}
	public void setCOUNT_ORDER(String cOUNT_ORDER) {
		COUNT_ORDER = cOUNT_ORDER;
	}

	

}
