package com.eenet.basequery.increment;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class Increment extends BaseEntity{

	private static final long serialVersionUID = -9082361796598344002L;
	private String incrementTitle;//增量标题
	private Integer incrementNum;//增量条数
	private String incrementType;//增量类型
	private String incrementBgColor;//增量背景颜色
	private String incrementIcon;//增量图标
	private Date incrementDate;//增量更新时间
	private Integer orderNo;//排序号
	public String getIncrementTitle() {
		return incrementTitle;
	}
	public void setIncrementTitle(String incrementTitle) {
		this.incrementTitle = incrementTitle;
	}
	public Integer getIncrementNum() {
		return incrementNum;
	}
	public void setIncrementNum(Integer incrementNum) {
		this.incrementNum = incrementNum;
	}
	public String getIncrementType() {
		return incrementType;
	}
	public void setIncrementType(String incrementType) {
		this.incrementType = incrementType;
	}
	public String getIncrementBgColor() {
		return incrementBgColor;
	}
	public void setIncrementBgColor(String incrementBgColor) {
		this.incrementBgColor = incrementBgColor;
	}
	public String getIncrementIcon() {
		return incrementIcon;
	}
	public void setIncrementIcon(String incrementIcon) {
		this.incrementIcon = incrementIcon;
	}
	public Date getIncrementDate() {
		return incrementDate;
	}
	public void setIncrementDate(Date incrementDate) {
		this.incrementDate = incrementDate;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
}
