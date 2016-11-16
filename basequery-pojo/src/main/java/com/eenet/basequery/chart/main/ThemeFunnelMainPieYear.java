package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainPieYear extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String DIM_CODE_NAME;// 网院
	private String COUNT_THISYEAR;// 本年报读学员数
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
	public String getCOUNT_THISYEAR() {
		return COUNT_THISYEAR;
	}
	public void setCOUNT_THISYEAR(String cOUNT_THISYEAR) {
		COUNT_THISYEAR = cOUNT_THISYEAR;
	}

	

	

}
