package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainPieMonth extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String DIM_CODE_NAME;// 网院
	private String COUNT_THISMONTH;// 本月报读学员数
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
	public String getDIM_CODE_NAME() {
		return DIM_CODE_NAME;
	}
	public void setDIM_CODE_NAME(String dIM_CODE_NAME) {
		DIM_CODE_NAME = dIM_CODE_NAME;
	}
	public String getCOUNT_THISMONTH() {
		return COUNT_THISMONTH;
	}
	public void setCOUNT_THISMONTH(String cOUNT_THISMONTH) {
		COUNT_THISMONTH = cOUNT_THISMONTH;
	}

}
