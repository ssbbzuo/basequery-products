package com.eenet.basequery.sales;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class SaleCustomerFollow extends BaseEntity{

	private static final long serialVersionUID = 1293028116411820946L;
	  private String customerName;//客户名称
	  private String customerCode;//客户编码
	  private Date operatorDt;//跟进时间
	  private String operatorName;//跟进人
	  private String intendStatus;//跟进意向编码
	  private String intendStatusName;//跟进意向
	  private String followContent;//跟进内容
	  private String followType;//跟进类型编码
	  private String followTypeName;//跟进类型
	  private String emailStatus;//邮件跟进状态编码
	  private String emailStatusName;//邮件跟进状态
	  private Date createdDt;//创建时间
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerCode() {
		return customerCode;
	}
	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}
	
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public String getIntendStatus() {
		return intendStatus;
	}
	public void setIntendStatus(String intendStatus) {
		this.intendStatus = intendStatus;
	}
	public String getIntendStatusName() {
		return intendStatusName;
	}
	public void setIntendStatusName(String intendStatusName) {
		this.intendStatusName = intendStatusName;
	}
	public String getFollowContent() {
		return followContent;
	}
	public void setFollowContent(String followContent) {
		this.followContent = followContent;
	}
	public String getFollowType() {
		return followType;
	}
	public void setFollowType(String followType) {
		this.followType = followType;
	}
	public String getFollowTypeName() {
		return followTypeName;
	}
	public void setFollowTypeName(String followTypeName) {
		this.followTypeName = followTypeName;
	}
	public String getEmailStatus() {
		return emailStatus;
	}
	public void setEmailStatus(String emailStatus) {
		this.emailStatus = emailStatus;
	}
	public String getEmailStatusName() {
		return emailStatusName;
	}
	public void setEmailStatusName(String emailStatusName) {
		this.emailStatusName = emailStatusName;
	}
	public Date getOperatorDt() {
		return operatorDt;
	}
	public void setOperatorDt(Date operatorDt) {
		this.operatorDt = operatorDt;
	}
	public Date getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
	
}
