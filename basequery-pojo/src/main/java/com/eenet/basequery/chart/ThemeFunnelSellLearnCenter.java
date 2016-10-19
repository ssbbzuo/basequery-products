package com.eenet.basequery.chart;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelSellLearnCenter extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private String DIM_LEARNCENTER;//学习中心
	private Date DIM_CREATED_DT;//时间
	private String ALL_COUNT;//全额单数
	private String ALL_SELL_PAY_AMT;//全额金额
	private String FIRST_COUNT;//首年单数
	private String FIRST_SELL_PAY_AMT;//首年金额
	private String PART_COUNT;//分期付款单数
	private String PART_SELL_PAY_AMT;//分期付款金额
	private String REFUND_COUNT;//退费单数
	private String REFUND_SELL_PAY_AMT;//退单金额
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


	public Date getDIM_CREATED_DT() {
		return DIM_CREATED_DT;
	}
	public void setDIM_CREATED_DT(Date dIM_CREATED_DT) {
		DIM_CREATED_DT = dIM_CREATED_DT;
	}
	public String getDIM_LEARNCENTER() {
		return DIM_LEARNCENTER;
	}
	public void setDIM_LEARNCENTER(String dIM_LEARNCENTER) {
		DIM_LEARNCENTER = dIM_LEARNCENTER;
	}
	public String getALL_COUNT() {
		return ALL_COUNT;
	}
	public void setALL_COUNT(String aLL_COUNT) {
		ALL_COUNT = aLL_COUNT;
	}
	public String getALL_SELL_PAY_AMT() {
		return ALL_SELL_PAY_AMT;
	}
	public void setALL_SELL_PAY_AMT(String aLL_SELL_PAY_AMT) {
		ALL_SELL_PAY_AMT = aLL_SELL_PAY_AMT;
	}
	public String getFIRST_COUNT() {
		return FIRST_COUNT;
	}
	public void setFIRST_COUNT(String fIRST_COUNT) {
		FIRST_COUNT = fIRST_COUNT;
	}
	public String getFIRST_SELL_PAY_AMT() {
		return FIRST_SELL_PAY_AMT;
	}
	public void setFIRST_SELL_PAY_AMT(String fIRST_SELL_PAY_AMT) {
		FIRST_SELL_PAY_AMT = fIRST_SELL_PAY_AMT;
	}
	public String getPART_COUNT() {
		return PART_COUNT;
	}
	public void setPART_COUNT(String pART_COUNT) {
		PART_COUNT = pART_COUNT;
	}
	public String getPART_SELL_PAY_AMT() {
		return PART_SELL_PAY_AMT;
	}
	public void setPART_SELL_PAY_AMT(String pART_SELL_PAY_AMT) {
		PART_SELL_PAY_AMT = pART_SELL_PAY_AMT;
	}
	public String getREFUND_COUNT() {
		return REFUND_COUNT;
	}
	public void setREFUND_COUNT(String rEFUND_COUNT) {
		REFUND_COUNT = rEFUND_COUNT;
	}
	public String getREFUND_SELL_PAY_AMT() {
		return REFUND_SELL_PAY_AMT;
	}
	public void setREFUND_SELL_PAY_AMT(String rEFUND_SELL_PAY_AMT) {
		REFUND_SELL_PAY_AMT = rEFUND_SELL_PAY_AMT;
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
