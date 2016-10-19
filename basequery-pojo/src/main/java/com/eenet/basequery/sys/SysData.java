package com.eenet.basequery.sys;

import com.eenet.base.BaseEntity;

public class SysData extends BaseEntity{

	private static final long serialVersionUID = 1519316485345433531L;
	private String dictTypeCode;
	private String dictTypeName;
	private String codeValue;
    private String codeName;
    private String isDefault;
    private Integer dictLevel;
    private Integer orderNo;
    private String parentId;
	public String getDictTypeCode() {
		return dictTypeCode;
	}
	public void setDictTypeCode(String dictTypeCode) {
		this.dictTypeCode = dictTypeCode;
	}
	public String getDictTypeName() {
		return dictTypeName;
	}
	public void setDictTypeName(String dictTypeName) {
		this.dictTypeName = dictTypeName;
	}
	public String getCodeValue() {
		return codeValue;
	}
	public void setCodeValue(String codeValue) {
		this.codeValue = codeValue;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}
	public Integer getDictLevel() {
		return dictLevel;
	}
	public void setDictLevel(Integer dictLevel) {
		this.dictLevel = dictLevel;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
    
}
