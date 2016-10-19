package com.eenet.basequery.chart;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelStudent extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private Date DIM_CREATED_DT;//时间
	private String FUNNEL_FORECAST_READ_COUNT;//阶段一单数
	private String FUNNEL_FLLOW_COUNT;//阶段二单数
	private String FUNNEL_READ_COUNT;//阶段三单数
	private String FUNNEL_SELL_COUNT;//阶段四单数
	
	private String FUNNEL_FORECAST_READ_PER;//阶段一百分比
	private String FUNNEL_FLLOW_PER;//阶段二百分比
	private String FUNNEL_READ_PER;//阶段三百分比
	private String FUNNEL_SELL_PER;//阶段四百分比	
	
	private String FUNNEL_FORECAST_READ_WANT;//阶段一意向
	private String FUNNEL_FORECAST_READ_SUCCESS;//阶段一成功
	private String FUNNEL_FORECAST_READ_LOST;//阶段一流失	
	
	private String FUNNEL_FLLOW_WANT;//阶段二意向
	private String FUNNEL_FLLOW_SUCCESS;//阶段二成功
	private String FUNNEL_FLLOW_LOST;//阶段二流失
	
	private String FUNNEL_READ_WANT;//阶段三意向
	private String FUNNEL_READ_SUCCESS;//阶段三成功
	private String FUNNEL_READ_LOST;//阶段三流失	
	
	private String FUNNEL_SELL_WANT;//阶段三意向
	private String FUNNEL_SELL_SUCCESS;//阶段三成功
	private String FUNNEL_SELL_LOST;//阶段三流失
	
	private String CREATE_DT_FROM;//统计开始时间
	private String CREATE_DT_TO;//统计结束时间

	private Integer currentCount;
	private Integer pageSize;
	
	public String getFUNNEL_FORECAST_READ_WANT() {
		return FUNNEL_FORECAST_READ_WANT;
	}
	public void setFUNNEL_FORECAST_READ_WANT(String fUNNEL_FORECAST_READ_WANT) {
		FUNNEL_FORECAST_READ_WANT = fUNNEL_FORECAST_READ_WANT;
	}
	public String getFUNNEL_FORECAST_READ_SUCCESS() {
		return FUNNEL_FORECAST_READ_SUCCESS;
	}
	public void setFUNNEL_FORECAST_READ_SUCCESS(String fUNNEL_FORECAST_READ_SUCCESS) {
		FUNNEL_FORECAST_READ_SUCCESS = fUNNEL_FORECAST_READ_SUCCESS;
	}
	public String getFUNNEL_FORECAST_READ_LOST() {
		return FUNNEL_FORECAST_READ_LOST;
	}
	public void setFUNNEL_FORECAST_READ_LOST(String fUNNEL_FORECAST_READ_LOST) {
		FUNNEL_FORECAST_READ_LOST = fUNNEL_FORECAST_READ_LOST;
	}
	public String getFUNNEL_FLLOW_WANT() {
		return FUNNEL_FLLOW_WANT;
	}
	public void setFUNNEL_FLLOW_WANT(String fUNNEL_FLLOW_WANT) {
		FUNNEL_FLLOW_WANT = fUNNEL_FLLOW_WANT;
	}
	public String getFUNNEL_FLLOW_SUCCESS() {
		return FUNNEL_FLLOW_SUCCESS;
	}
	public void setFUNNEL_FLLOW_SUCCESS(String fUNNEL_FLLOW_SUCCESS) {
		FUNNEL_FLLOW_SUCCESS = fUNNEL_FLLOW_SUCCESS;
	}
	public String getFUNNEL_FLLOW_LOST() {
		return FUNNEL_FLLOW_LOST;
	}
	public void setFUNNEL_FLLOW_LOST(String fUNNEL_FLLOW_LOST) {
		FUNNEL_FLLOW_LOST = fUNNEL_FLLOW_LOST;
	}
	public String getFUNNEL_READ_WANT() {
		return FUNNEL_READ_WANT;
	}
	public void setFUNNEL_READ_WANT(String fUNNEL_READ_WANT) {
		FUNNEL_READ_WANT = fUNNEL_READ_WANT;
	}
	public String getFUNNEL_READ_SUCCESS() {
		return FUNNEL_READ_SUCCESS;
	}
	public void setFUNNEL_READ_SUCCESS(String fUNNEL_READ_SUCCESS) {
		FUNNEL_READ_SUCCESS = fUNNEL_READ_SUCCESS;
	}
	public String getFUNNEL_READ_LOST() {
		return FUNNEL_READ_LOST;
	}
	public void setFUNNEL_READ_LOST(String fUNNEL_READ_LOST) {
		FUNNEL_READ_LOST = fUNNEL_READ_LOST;
	}
	public String getFUNNEL_SELL_WANT() {
		return FUNNEL_SELL_WANT;
	}
	public void setFUNNEL_SELL_WANT(String fUNNEL_SELL_WANT) {
		FUNNEL_SELL_WANT = fUNNEL_SELL_WANT;
	}
	public String getFUNNEL_SELL_SUCCESS() {
		return FUNNEL_SELL_SUCCESS;
	}
	public void setFUNNEL_SELL_SUCCESS(String fUNNEL_SELL_SUCCESS) {
		FUNNEL_SELL_SUCCESS = fUNNEL_SELL_SUCCESS;
	}
	public String getFUNNEL_SELL_LOST() {
		return FUNNEL_SELL_LOST;
	}
	public void setFUNNEL_SELL_LOST(String fUNNEL_SELL_LOST) {
		FUNNEL_SELL_LOST = fUNNEL_SELL_LOST;
	}
	public String getFUNNEL_FORECAST_READ_PER() {
		return FUNNEL_FORECAST_READ_PER;
	}
	public void setFUNNEL_FORECAST_READ_PER(String fUNNEL_FORECAST_READ_PER) {
		FUNNEL_FORECAST_READ_PER = fUNNEL_FORECAST_READ_PER;
	}
	public String getFUNNEL_FLLOW_PER() {
		return FUNNEL_FLLOW_PER;
	}
	public void setFUNNEL_FLLOW_PER(String fUNNEL_FLLOW_PER) {
		FUNNEL_FLLOW_PER = fUNNEL_FLLOW_PER;
	}
	public String getFUNNEL_READ_PER() {
		return FUNNEL_READ_PER;
	}
	public void setFUNNEL_READ_PER(String fUNNEL_READ_PER) {
		FUNNEL_READ_PER = fUNNEL_READ_PER;
	}
	public String getFUNNEL_SELL_PER() {
		return FUNNEL_SELL_PER;
	}
	public void setFUNNEL_SELL_PER(String fUNNEL_SELL_PER) {
		FUNNEL_SELL_PER = fUNNEL_SELL_PER;
	}


	
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

	public Date getDIM_CREATED_DT() {
		return DIM_CREATED_DT;
	}
	public void setDIM_CREATED_DT(Date dIM_CREATED_DT) {
		DIM_CREATED_DT = dIM_CREATED_DT;
	}

	public String getFUNNEL_FORECAST_READ_COUNT() {
		return FUNNEL_FORECAST_READ_COUNT;
	}
	public void setFUNNEL_FORECAST_READ_COUNT(String fUNNEL_FORECAST_READ_COUNT) {
		FUNNEL_FORECAST_READ_COUNT = fUNNEL_FORECAST_READ_COUNT;
	}
	public String getFUNNEL_FLLOW_COUNT() {
		return FUNNEL_FLLOW_COUNT;
	}
	public void setFUNNEL_FLLOW_COUNT(String fUNNEL_FLLOW_COUNT) {
		FUNNEL_FLLOW_COUNT = fUNNEL_FLLOW_COUNT;
	}
	public String getFUNNEL_READ_COUNT() {
		return FUNNEL_READ_COUNT;
	}
	public void setFUNNEL_READ_COUNT(String fUNNEL_READ_COUNT) {
		FUNNEL_READ_COUNT = fUNNEL_READ_COUNT;
	}
	public String getFUNNEL_SELL_COUNT() {
		return FUNNEL_SELL_COUNT;
	}
	public void setFUNNEL_SELL_COUNT(String fUNNEL_SELL_COUNT) {
		FUNNEL_SELL_COUNT = fUNNEL_SELL_COUNT;
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
