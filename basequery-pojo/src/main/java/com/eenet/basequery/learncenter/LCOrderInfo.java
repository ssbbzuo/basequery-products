package com.eenet.basequery.learncenter;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class LCOrderInfo extends BaseEntity{

	private static final long serialVersionUID = -4540913346929793572L;
	private String studentId;//学员ID
	private String studentName;//学员名称
	private String mobile;//学员手机
	private String networkSchoolCode;//网院编码
	private String schoolChineseName;//网院名称
	private String learncenterCode;//学习中心编码
	private String learncenterName;//学习中心名称
	private String learncenterUserId;//班主任ID
	private String staffName;//班主任名称
	private String productId;//报读产品ID
	private String productName;//报读产品名称
	private String receivableTotalAmt;//应收总金额
	private String favAmt;//优惠金额
	private String orderPaidAmt;//实收金额
	private String payType;//支付方式编码
	private String payTypeName;//支付方式
	private String orderStatus;//订单状态编码
	private String orderStatusName;//订单状态
	private String customerId;//客户ID
	private String customerName;//客户名称
	private Date createdDt;//下单时间
	private Date payDate;//支付时间
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getNetworkSchoolCode() {
		return networkSchoolCode;
	}
	public void setNetworkSchoolCode(String networkSchoolCode) {
		this.networkSchoolCode = networkSchoolCode;
	}
	public String getSchoolChineseName() {
		return schoolChineseName;
	}
	public void setSchoolChineseName(String schoolChineseName) {
		this.schoolChineseName = schoolChineseName;
	}
	public String getLearncenterCode() {
		return learncenterCode;
	}
	public void setLearncenterCode(String learncenterCode) {
		this.learncenterCode = learncenterCode;
	}
	public String getLearncenterName() {
		return learncenterName;
	}
	public void setLearncenterName(String learncenterName) {
		this.learncenterName = learncenterName;
	}
	public String getLearncenterUserId() {
		return learncenterUserId;
	}
	public void setLearncenterUserId(String learncenterUserId) {
		this.learncenterUserId = learncenterUserId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getReceivableTotalAmt() {
		return receivableTotalAmt;
	}
	public void setReceivableTotalAmt(String receivableTotalAmt) {
		this.receivableTotalAmt = receivableTotalAmt;
	}
	public String getFavAmt() {
		return favAmt;
	}
	public void setFavAmt(String favAmt) {
		this.favAmt = favAmt;
	}
	public String getOrderPaidAmt() {
		return orderPaidAmt;
	}
	public void setOrderPaidAmt(String orderPaidAmt) {
		this.orderPaidAmt = orderPaidAmt;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getPayTypeName() {
		return payTypeName;
	}
	public void setPayTypeName(String payTypeName) {
		this.payTypeName = payTypeName;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getOrderStatusName() {
		return orderStatusName;
	}
	public void setOrderStatusName(String orderStatusName) {
		this.orderStatusName = orderStatusName;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public Date getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
	
}
