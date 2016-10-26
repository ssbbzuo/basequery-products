package com.eenet.basequery.chart.company;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelCompanyAffirmStructures extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private String DIM_STRUCTURE_NAME;//团队
	private Date DIM_CREATED_DT;//时间
	private String AGREE_CUSTOMER_COUNT;//已分配客户数
	private String AFFIRM_COUNT;//覆盖客户数
	private String AGREE_FLLOW_COUNT;//跟进次数
	private String FLLOW_FREQUENCY;//跟踪频次
	private String AFFIRM_PER;//跟进率	
	private String CREATE_DT_FROM;//统计开始时间
	private String CREATE_DT_TO;//统计结束时间
	
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

	public String getAGREE_CUSTOMER_COUNT() {
		return AGREE_CUSTOMER_COUNT;
	}
	public void setAGREE_CUSTOMER_COUNT(String aGREE_CUSTOMER_COUNT) {
		AGREE_CUSTOMER_COUNT = aGREE_CUSTOMER_COUNT;
	}
	public String getAGREE_FLLOW_COUNT() {
		return AGREE_FLLOW_COUNT;
	}
	public void setAGREE_FLLOW_COUNT(String aGREE_FLLOW_COUNT) {
		AGREE_FLLOW_COUNT = aGREE_FLLOW_COUNT;
	}
	public String getFLLOW_FREQUENCY() {
		return FLLOW_FREQUENCY;
	}
	public void setFLLOW_FREQUENCY(String fLLOW_FREQUENCY) {
		FLLOW_FREQUENCY = fLLOW_FREQUENCY;
	}

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


	
	public Date getDIM_CREATED_DT() {
		return DIM_CREATED_DT;
	}
	public void setDIM_CREATED_DT(Date dIM_CREATED_DT) {
		DIM_CREATED_DT = dIM_CREATED_DT;
	}

	public String getDIM_STRUCTURE_NAME() {
		return DIM_STRUCTURE_NAME;
	}
	public void setDIM_STRUCTURE_NAME(String dIM_STRUCTURE_NAME) {
		DIM_STRUCTURE_NAME = dIM_STRUCTURE_NAME;
	}
	public String getAFFIRM_COUNT() {
		return AFFIRM_COUNT;
	}
	public void setAFFIRM_COUNT(String aFFIRM_COUNT) {
		AFFIRM_COUNT = aFFIRM_COUNT;
	}
	public String getAFFIRM_PER() {
		return AFFIRM_PER;
	}
	public void setAFFIRM_PER(String aFFIRM_PER) {
		AFFIRM_PER = aFFIRM_PER;
	}

	
	
	
	
}
