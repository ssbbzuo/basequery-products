package com.eenet.basequery.chart.company;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelCompanyAgreeCity extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private String DIM_CITY;//辖区市
	private Date DIM_CREATED_DT;//时间
	private String AGREE_CUSTOMER_COUNT;//分配客户数
	private String AGREE_FLLOW_CUSTOMER_COUNT;//跟进客户数
	private String AGREE_FLLOW_COUNT;//跟进次数
	private String FLLOW_FREQUENCY;//跟踪频次
	private String AGREE_COUNT;//同意合作客户数
	private String AGREE_PER;//合作转化率
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
	public String getAGREE_FLLOW_CUSTOMER_COUNT() {
		return AGREE_FLLOW_CUSTOMER_COUNT;
	}
	public void setAGREE_FLLOW_CUSTOMER_COUNT(String aGREE_FLLOW_CUSTOMER_COUNT) {
		AGREE_FLLOW_CUSTOMER_COUNT = aGREE_FLLOW_CUSTOMER_COUNT;
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
	public String getAGREE_COUNT() {
		return AGREE_COUNT;
	}
	public void setAGREE_COUNT(String aGREE_COUNT) {
		AGREE_COUNT = aGREE_COUNT;
	}
	public String getAGREE_PER() {
		return AGREE_PER;
	}
	public void setAGREE_PER(String aGREE_PER) {
		AGREE_PER = aGREE_PER;
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


	public String getDIM_CITY() {
		return DIM_CITY;
	}
	public void setDIM_CITY(String dIM_CITY) {
		DIM_CITY = dIM_CITY;
	}
	public String getAGREE_CUSTOMER_COUNT() {
		return AGREE_CUSTOMER_COUNT;
	}
	public void setAGREE_CUSTOMER_COUNT(String aGREE_CUSTOMER_COUNT) {
		AGREE_CUSTOMER_COUNT = aGREE_CUSTOMER_COUNT;
	}

	
	
	
	
}
