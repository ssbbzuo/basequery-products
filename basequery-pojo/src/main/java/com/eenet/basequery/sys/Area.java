package com.eenet.basequery.sys;

import com.eenet.base.BaseEntity;
/**
 * 区域信息（省、市、区、街道）
 * @author lhb
 *
 */
public class Area extends BaseEntity {

	private static final long serialVersionUID = 850376391479014590L;
	private String areaCode;//区域编码
	private String areaName;//区域名称
	private String areaDesc;//区域描述
	private String parentCode;//区域父编码
	private String parentName;//区域父名称
	private String fullParentCode;//所有父节点编码
	private String fullParentName;//所有父节点名称
	private String areaLevel;//区域层级
	private Integer orderNo;//排序号
	private String codeRef;//区域类型，A国标，B推广
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaDesc() {
		return areaDesc;
	}
	public void setAreaDesc(String areaDesc) {
		this.areaDesc = areaDesc;
	}
	public String getParentCode() {
		return parentCode;
	}
	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getFullParentCode() {
		return fullParentCode;
	}
	public void setFullParentCode(String fullParentCode) {
		this.fullParentCode = fullParentCode;
	}
	public String getFullParentName() {
		return fullParentName;
	}
	public void setFullParentName(String fullParentName) {
		this.fullParentName = fullParentName;
	}
	public String getAreaLevel() {
		return areaLevel;
	}
	public void setAreaLevel(String areaLevel) {
		this.areaLevel = areaLevel;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public String getCodeRef() {
		return codeRef;
	}
	public void setCodeRef(String codeRef) {
		this.codeRef = codeRef;
	}

}
