package com.eenet.basequery.pri;

import java.util.Date;

import com.eenet.base.BaseEntity;

/**
 * 
 * @author koopwolf
 * 用户实体
 *
 */
public class UserInfo   extends BaseEntity{

	private static final long serialVersionUID = 530665033357323554L;
	
	private String name;//真实姓名
	private String namePing;//姓名拼音
	private String sex;//性别,字典:SEX
	private Date birthday;//出生日期
	private String idCard;//身份证号
	private Boolean realnameChecked = false;//实名制验证(姓名\性别\出生日期\地址\身份证号等身份证信息)
	private Boolean mobileChecked = false;//手机是否验证
	private Boolean emailChecked = false;//邮箱是否验证
	private Long mobile;//手机
	private String email;//电子邮箱
	private String ee;//EE
	private String photo;//头像
	private String adminCode;//用户编码
	private String cardPhoto;//证件照片
	private String folk;//民族,字典:FOLK_CODE
	private String unitCode;//单位编码
	private String nativePlace;//籍贯,区域码表:CM_AREA
	private String bloodType;//血型
	private Integer workTime;//参加工作年份
	private String degree;//学历，字典:DEGREE_CODE
	private String graduate;//毕业院校，编码:CM_COMPANY_INFO
	private String zipCode;//邮政编码
	private String houseHodeType;//户口性质
	private String faith;//宗教信仰,字典FAITH_CODE
	private String province;//现居住省,区域码表:CM_AREA
	private String city;//现居住市,区域码表:CM_AREA
	private String district;//现居住区/县,区域码表:CM_AREA
	private String street;//现居住街道/镇,区域码表:CM_AREA
	private String address;//现住址
	private String homepage;//个人主页
	private String companyTele;//公司电话
	private String homeTele;//家庭电话
	private String wechat;//微信
	private String qq;//QQ
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNamePing() {
		return namePing;
	}
	public void setNamePing(String namePing) {
		this.namePing = namePing;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public Boolean getRealnameChecked() {
		return realnameChecked;
	}
	public void setRealnameChecked(Boolean realnameChecked) {
		this.realnameChecked = realnameChecked;
	}
	public Boolean getMobileChecked() {
		return mobileChecked;
	}
	public void setMobileChecked(Boolean mobileChecked) {
		this.mobileChecked = mobileChecked;
	}
	public Boolean getEmailChecked() {
		return emailChecked;
	}
	public void setEmailChecked(Boolean emailChecked) {
		this.emailChecked = emailChecked;
	}
	public Long getMobile() {
		return mobile;
	}
	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEe() {
		return ee;
	}
	public void setEe(String ee) {
		this.ee = ee;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getAdminCode() {
		return adminCode;
	}
	public void setAdminCode(String adminCode) {
		this.adminCode = adminCode;
	}
	public String getCardPhoto() {
		return cardPhoto;
	}
	public void setCardPhoto(String cardPhoto) {
		this.cardPhoto = cardPhoto;
	}
	public String getFolk() {
		return folk;
	}
	public void setFolk(String folk) {
		this.folk = folk;
	}
	public String getUnitCode() {
		return unitCode;
	}
	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}
	public String getNativePlace() {
		return nativePlace;
	}
	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}
	public String getBloodType() {
		return bloodType;
	}
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	public Integer getWorkTime() {
		return workTime;
	}
	public void setWorkTime(Integer workTime) {
		this.workTime = workTime;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getGraduate() {
		return graduate;
	}
	public void setGraduate(String graduate) {
		this.graduate = graduate;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getHouseHodeType() {
		return houseHodeType;
	}
	public void setHouseHodeType(String houseHodeType) {
		this.houseHodeType = houseHodeType;
	}
	public String getFaith() {
		return faith;
	}
	public void setFaith(String faith) {
		this.faith = faith;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getCompanyTele() {
		return companyTele;
	}
	public void setCompanyTele(String companyTele) {
		this.companyTele = companyTele;
	}
	public String getHomeTele() {
		return homeTele;
	}
	public void setHomeTele(String homeTele) {
		this.homeTele = homeTele;
	}
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}

	
	

}
