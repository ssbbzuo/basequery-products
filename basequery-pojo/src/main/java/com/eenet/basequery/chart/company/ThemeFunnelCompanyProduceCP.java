package com.eenet.basequery.chart.company;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelCompanyProduceCP extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private String DIM_CUSTOMER_PROP;//性质
	private Date DIM_CREATED_DT;//时间
	private String EXECUTE_COUNT;//执行合作客户数
	private String PRODUCE_CUSTOMER_COUNT;//产单客户数
	private String PRODUCE_ORDER_COUNT;//产单数
	private String PRODUCE_PER;//产单合作转化率
	private String PRODUCE_ORDER_PAID_AMT;//产单总金额
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
	public String getPRODUCE_CUSTOMER_COUNT() {
		return PRODUCE_CUSTOMER_COUNT;
	}
	public void setPRODUCE_CUSTOMER_COUNT(String pRODUCE_CUSTOMER_COUNT) {
		PRODUCE_CUSTOMER_COUNT = pRODUCE_CUSTOMER_COUNT;
	}
	public String getPRODUCE_ORDER_COUNT() {
		return PRODUCE_ORDER_COUNT;
	}
	public void setPRODUCE_ORDER_COUNT(String pRODUCE_ORDER_COUNT) {
		PRODUCE_ORDER_COUNT = pRODUCE_ORDER_COUNT;
	}
	public String getPRODUCE_PER() {
		return PRODUCE_PER;
	}
	public void setPRODUCE_PER(String pRODUCE_PER) {
		PRODUCE_PER = pRODUCE_PER;
	}
	public String getPRODUCE_ORDER_PAID_AMT() {
		return PRODUCE_ORDER_PAID_AMT;
	}
	public void setPRODUCE_ORDER_PAID_AMT(String pRODUCE_ORDER_PAID_AMT) {
		PRODUCE_ORDER_PAID_AMT = pRODUCE_ORDER_PAID_AMT;
	}
	public String getEXECUTE_COUNT() {
		return EXECUTE_COUNT;
	}
	public void setEXECUTE_COUNT(String eXECUTE_COUNT) {
		EXECUTE_COUNT = eXECUTE_COUNT;
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
	public String getDIM_CUSTOMER_PROP() {
		return DIM_CUSTOMER_PROP;
	}
	public void setDIM_CUSTOMER_PROP(String dIM_CUSTOMER_PROP) {
		DIM_CUSTOMER_PROP = dIM_CUSTOMER_PROP;
	}


	
	
	
	
}
