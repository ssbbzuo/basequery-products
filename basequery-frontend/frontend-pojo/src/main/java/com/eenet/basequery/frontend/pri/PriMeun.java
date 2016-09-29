package com.eenet.basequery.frontend.pri;

import com.eenet.base.BaseEntity;

public class PriMeun extends BaseEntity {

	private static final long serialVersionUID = -5658508174356311701L;
	private String meunId;//主键
	private String meunName;//菜单名称
	private String meunAction;//菜单地址
	private String meunParentId;//菜单父节点
	private Integer OrderNo;//排序号
	public String getMeunId() {
		return meunId;
	}
	public void setMeunId(String meunId) {
		this.meunId = meunId;
	}
	public String getMeunName() {
		return meunName;
	}
	public void setMeunName(String meunName) {
		this.meunName = meunName;
	}
	public String getMeunAction() {
		return meunAction;
	}
	public void setMeunAction(String meunAction) {
		this.meunAction = meunAction;
	}
	public String getMeunParentId() {
		return meunParentId;
	}
	public void setMeunParentId(String meunParentId) {
		this.meunParentId = meunParentId;
	}
	public Integer getOrderNo() {
		return OrderNo;
	}
	public void setOrderNo(Integer orderNo) {
		OrderNo = orderNo;
	}
}
