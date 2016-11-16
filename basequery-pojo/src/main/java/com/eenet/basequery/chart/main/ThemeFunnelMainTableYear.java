package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainTableYear extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String COUNT_BEFOREYEAR;// 往年累计报读学员数
	private String COUNT_THISYEAR;// 本年报读学员数
	private String COUNT_ALL;// 累计
	public String getCOUNT_ALL() {
		return COUNT_ALL;
	}
	public void setCOUNT_ALL(String cOUNT_ALL) {
		COUNT_ALL = cOUNT_ALL;
	}
	private String STUDENT_PER;// 占比
	private String DIM_CODE_NAME;// 网院
	private String CODE_NAME;// 原网院	
	public String getCODE_NAME() {
		return CODE_NAME;
	}
	public void setCODE_NAME(String cODE_NAME) {
		CODE_NAME = cODE_NAME;
	}
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
	public String getCOUNT_BEFOREYEAR() {
		return COUNT_BEFOREYEAR;
	}
	public void setCOUNT_BEFOREYEAR(String cOUNT_BEFOREYEAR) {
		COUNT_BEFOREYEAR = cOUNT_BEFOREYEAR;
	}
	public String getCOUNT_THISYEAR() {
		return COUNT_THISYEAR;
	}
	public void setCOUNT_THISYEAR(String cOUNT_THISYEAR) {
		COUNT_THISYEAR = cOUNT_THISYEAR;
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
