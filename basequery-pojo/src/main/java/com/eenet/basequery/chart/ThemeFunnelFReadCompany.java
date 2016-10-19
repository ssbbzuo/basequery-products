package com.eenet.basequery.chart;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelFReadCompany extends BaseEntity{

	private static final long serialVersionUID = 7117091297834362088L;
	private String DIM_COMPANY;//客户
	private Date DIM_CREATED_DT;//时间
	private String FORECAST_READ_COUNT;//预报读咨询单数
	private String CREATE_DT_FROM;//统计开始时间
	private String CREATE_DT_TO;//统计结束时间


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

	public String getDIM_COMPANY() {
		return DIM_COMPANY;
	}
	public void setDIM_COMPANY(String dIM_COMPANY) {
		DIM_COMPANY = dIM_COMPANY;
	}


	public Date getDIM_CREATED_DT() {
		return DIM_CREATED_DT;
	}
	public void setDIM_CREATED_DT(Date dIM_CREATED_DT) {
		DIM_CREATED_DT = dIM_CREATED_DT;
	}
	public String getFORECAST_READ_COUNT() {
		return FORECAST_READ_COUNT;
	}
	public void setFORECAST_READ_COUNT(String fORECAST_READ_COUNT) {
		FORECAST_READ_COUNT = fORECAST_READ_COUNT;
	}
	public String getCREATE_DT_FROM() {
		return CREATE_DT_FROM;
	}
	public void setCREATE_DT_FROM(String cREATE_DT_FROM) {
		CREATE_DT_FROM = cREATE_DT_FROM;
	}
	public String getCREATE_DT_TO() {
		return CREATE_DT_TO;
	}
	public void setCREATE_DT_TO(String cREATE_DT_TO) {
		CREATE_DT_TO = cREATE_DT_TO;
	}
	
	
	
	
	
}
