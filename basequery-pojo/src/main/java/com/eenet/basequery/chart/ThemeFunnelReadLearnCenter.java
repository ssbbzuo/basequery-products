package com.eenet.basequery.chart;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelReadLearnCenter extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private String DIM_LEARNCENTER;//学习中心
	private Date DIM_CREATED_DT;//时间
	private String READ_COUNT;//下单数
	private String SELL_TOTAL_AMT;//总金额
	private String SELL_FAV_AMT;//优惠金额
	private String SELL_RECEIVABLE_AMT;//应收总金额
	private String SELL_PAY_AMT;//实收总金额
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
	public String getREAD_COUNT() {
		return READ_COUNT;
	}
	public void setREAD_COUNT(String rEAD_COUNT) {
		READ_COUNT = rEAD_COUNT;
	}
	public String getSELL_TOTAL_AMT() {
		return SELL_TOTAL_AMT;
	}
	public void setSELL_TOTAL_AMT(String sELL_TOTAL_AMT) {
		SELL_TOTAL_AMT = sELL_TOTAL_AMT;
	}
	public String getSELL_FAV_AMT() {
		return SELL_FAV_AMT;
	}
	public void setSELL_FAV_AMT(String sELL_FAV_AMT) {
		SELL_FAV_AMT = sELL_FAV_AMT;
	}
	public String getSELL_RECEIVABLE_AMT() {
		return SELL_RECEIVABLE_AMT;
	}
	public void setSELL_RECEIVABLE_AMT(String sELL_RECEIVABLE_AMT) {
		SELL_RECEIVABLE_AMT = sELL_RECEIVABLE_AMT;
	}
	public String getSELL_PAY_AMT() {
		return SELL_PAY_AMT;
	}
	public void setSELL_PAY_AMT(String sELL_PAY_AMT) {
		SELL_PAY_AMT = sELL_PAY_AMT;
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
