package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainTableYearMonth extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String COUNT_THISMONTH;// 本月报读学员数
	private String COUNT_BEFOREMONTH;// 上月报读学员数
	private String STUDENT_PER;// 占比
	private String DIM_CODE_NAME;// 网院
	public String getCODE_NAME() {
		return CODE_NAME;
	}
	public void setCODE_NAME(String cODE_NAME) {
		CODE_NAME = cODE_NAME;
	}
	private String CODE_NAME;// 原网院	
	private String CREATED_DT;// 日期
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
	public String getCOUNT_THISMONTH() {
		return COUNT_THISMONTH;
	}
	public void setCOUNT_THISMONTH(String cOUNT_THISMONTH) {
		COUNT_THISMONTH = cOUNT_THISMONTH;
	}
	public String getCOUNT_BEFOREMONTH() {
		return COUNT_BEFOREMONTH;
	}
	public void setCOUNT_BEFOREMONTH(String cOUNT_BEFOREMONTH) {
		COUNT_BEFOREMONTH = cOUNT_BEFOREMONTH;
	}
	public String getSTUDENT_PER() {
		return STUDENT_PER;
	}
	public void setSTUDENT_PER(String sTUDENT_PER) {
		STUDENT_PER = sTUDENT_PER;
	}
	public String getDIM_CODE_NAME() {
		return DIM_CODE_NAME;
	}
	public void setDIM_CODE_NAME(String dIM_CODE_NAME) {
		DIM_CODE_NAME = dIM_CODE_NAME;
	}
	public String getCREATED_DT() {
		return CREATED_DT;
	}
	public void setCREATED_DT(String cREATED_DT) {
		CREATED_DT = cREATED_DT;
	}


	

}
