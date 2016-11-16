package com.eenet.basequery.chart.main;

import com.eenet.base.BaseEntity;

public class ThemeFunnelMainNumber extends BaseEntity{
	
	private static final long serialVersionUID = 5866891569541028742L;
	
	private String COUNT_STUDENT;// 现有学员
	private String COUNT_READ_STUDENT;// 已报读学员
	private String COUNT_NEW_STUDENT;// 新增学员
	private String COUNT_NEW_READ_STUDENT;// 新增报读学员
	private String COUNT_STUDY_STUDENT;// 在读学员
	private String COUNT_CUSTOMER;// 现有客户数
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
	public String getCOUNT_STUDENT() {
		return COUNT_STUDENT;
	}
	public void setCOUNT_STUDENT(String cOUNT_STUDENT) {
		COUNT_STUDENT = cOUNT_STUDENT;
	}
	public String getCOUNT_READ_STUDENT() {
		return COUNT_READ_STUDENT;
	}
	public void setCOUNT_READ_STUDENT(String cOUNT_READ_STUDENT) {
		COUNT_READ_STUDENT = cOUNT_READ_STUDENT;
	}
	public String getCOUNT_NEW_STUDENT() {
		return COUNT_NEW_STUDENT;
	}
	public void setCOUNT_NEW_STUDENT(String cOUNT_NEW_STUDENT) {
		COUNT_NEW_STUDENT = cOUNT_NEW_STUDENT;
	}
	public String getCOUNT_NEW_READ_STUDENT() {
		return COUNT_NEW_READ_STUDENT;
	}
	public void setCOUNT_NEW_READ_STUDENT(String cOUNT_NEW_READ_STUDENT) {
		COUNT_NEW_READ_STUDENT = cOUNT_NEW_READ_STUDENT;
	}
	public String getCOUNT_STUDY_STUDENT() {
		return COUNT_STUDY_STUDENT;
	}
	public void setCOUNT_STUDY_STUDENT(String cOUNT_STUDY_STUDENT) {
		COUNT_STUDY_STUDENT = cOUNT_STUDY_STUDENT;
	}
	public String getCOUNT_CUSTOMER() {
		return COUNT_CUSTOMER;
	}
	public void setCOUNT_CUSTOMER(String cOUNT_CUSTOMER) {
		COUNT_CUSTOMER = cOUNT_CUSTOMER;
	}
	public String getCOUNT_WORK_CUSTOMER() {
		return COUNT_WORK_CUSTOMER;
	}
	public void setCOUNT_WORK_CUSTOMER(String cOUNT_WORK_CUSTOMER) {
		COUNT_WORK_CUSTOMER = cOUNT_WORK_CUSTOMER;
	}
	public String getCOUNT_NEW_CUSTOMER() {
		return COUNT_NEW_CUSTOMER;
	}
	public void setCOUNT_NEW_CUSTOMER(String cOUNT_NEW_CUSTOMER) {
		COUNT_NEW_CUSTOMER = cOUNT_NEW_CUSTOMER;
	}
	public String getCOUNT_NEW_WORK_CUSTOMER() {
		return COUNT_NEW_WORK_CUSTOMER;
	}
	public void setCOUNT_NEW_WORK_CUSTOMER(String cOUNT_NEW_WORK_CUSTOMER) {
		COUNT_NEW_WORK_CUSTOMER = cOUNT_NEW_WORK_CUSTOMER;
	}
	public String getCOUNT_STUDY_CUSTOMER() {
		return COUNT_STUDY_CUSTOMER;
	}
	public void setCOUNT_STUDY_CUSTOMER(String cOUNT_STUDY_CUSTOMER) {
		COUNT_STUDY_CUSTOMER = cOUNT_STUDY_CUSTOMER;
	}
	private String COUNT_WORK_CUSTOMER;// 合作客户数
	private String COUNT_NEW_CUSTOMER;// 新增客户数
	private String COUNT_NEW_WORK_CUSTOMER;// 新增合作客户数
	private String COUNT_STUDY_CUSTOMER; // 在读学员客户

}
