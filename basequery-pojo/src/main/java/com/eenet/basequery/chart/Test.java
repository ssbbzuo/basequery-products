package com.eenet.basequery.chart;

import com.eenet.base.BaseEntity;

public class Test extends BaseEntity{

	private static final long serialVersionUID = -4159793170143695568L;
	private String number;//数字
	private String age;//平均年龄
	private String peoples;//人数
	private String country;//国家
	private String year;//年份
	
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
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPeoples() {
		return peoples;
	}
	public void setPeoples(String peoples) {
		this.peoples = peoples;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	@Override
	public String toString() {
		return number + "," + age + "," + peoples + ",'" + country + "',"+ year;
	}

	
	
	
}
