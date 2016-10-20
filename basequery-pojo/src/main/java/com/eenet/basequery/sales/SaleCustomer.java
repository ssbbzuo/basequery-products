package com.eenet.basequery.sales;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class SaleCustomer extends BaseEntity{

	private static final long serialVersionUID = 1293028116411820946L;
	private String customerName;//客户名称
	private String customerCode;//客户编码
	private String personsScale;//客户规模编码
	private String personsScaleName;//客户规模
	private String customerProp;//客户性质编码
	private String customerPropName;//客户性质
	private String cooperateStatus;//合作状态编码
	private String cooperateStatusName;//合作状态
	private Date activateDt;//激活时间
	private Date createdDt;//创建时间
	private String province;//省份编码
	private String provinceName;//省份
	private String city;//市编码
	private String cityName;//市
	private String district;//区编码
	private String districtName;//区名称
	private String staffId;//该客户的服务人员ID
	public String getStaffId() {
		return staffId;
	}
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	public String getPersonsScaleName() {
		return personsScaleName;
	}
	public void setPersonsScaleName(String personsScaleName) {
		this.personsScaleName = personsScaleName;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
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
	public String getPersonsScale() {
		return personsScale;
	}
	public void setPersonsScale(String personsScale) {
		this.personsScale = personsScale;
	}
	public String getCustomerProp() {
		return customerProp;
	}
	public void setCustomerProp(String customerProp) {
		this.customerProp = customerProp;
	}
	public String getCustomerPropName() {
		return customerPropName;
	}
	public void setCustomerPropName(String customerPropName) {
		this.customerPropName = customerPropName;
	}
	public String getCooperateStatus() {
		return cooperateStatus;
	}
	public void setCooperateStatus(String cooperateStatus) {
		this.cooperateStatus = cooperateStatus;
	}
	public String getCooperateStatusName() {
		return cooperateStatusName;
	}
	public void setCooperateStatusName(String cooperateStatusName) {
		this.cooperateStatusName = cooperateStatusName;
	}
	public Date getActivateDt() {
		return activateDt;
	}
	public void setActivateDt(Date activateDt) {
		this.activateDt = activateDt;
	}
	public Date getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
}
