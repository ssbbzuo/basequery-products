package com.eenet.basequery.authen;

import com.eenet.util.cryptography.EncryptException;
import com.eenet.util.cryptography.MD5Util;

public class Constant {

	public static final String appId = "ED11244595E14383A995E6AB819B77F8";//平台应用ID
	public static final String appSecretKey = "pASS77#";//平台应用密码
	public static final String appDomain = "http://overall-query.gzedu.com";//平台域名
	public static final String adminAccount = "datacenter.manager";//平台超级管理员账号
	public static final String adminPassword = "datacenter79";//平台超级管理员密码
	
	public static String secutiryURL = "http://172.16.146.152:8080/security-api";//测试环境
	public static String baseInfoURL = "http://172.16.146.152:8080/baseinfo-openapi";//测试环境
//
//	private static String secutiryURL = "http://security-api.open.gzedu.com";//生成环境
//	private static String baseInfoURL = "http://baseinfo-api.open.gzedu.com";//生成环境

	public static String getAdminSignOnGrantURL = secutiryURL+"/getAdminSignOnGrant";
	public static String getAdminAccessTokenURL = secutiryURL+"/getAdminAccessToken";
	public static String getAdminUserURL = baseInfoURL+"/getAdminUser";
	public static String saveAdminUserUrl = baseInfoURL+"/saveAdminUser";
	public static String registeAdminUserLoginAccount = baseInfoURL+"/registeAdminUserLoginAccount";
	public static String initAdminUserLoginPassword = baseInfoURL+"/initAdminUserLoginPassword";
	public static String changeAdminUserLoginPassword = baseInfoURL+"/changeAdminUserLoginPassword";
	
	
	
	public static String adminUserLoginInfoSession = "adminUserLoginInfo";
	public static void main(String[] args) throws EncryptException {
		System.out.println(MD5Util.encrypt("nyz0413"));
		System.out.println(MD5Util.encrypt("123456"));
		System.out.println(MD5Util.encrypt("a1b2c3d4"));
		System.out.println(MD5Util.encrypt("id11141303."));
		System.out.println(MD5Util.encrypt("wwww8050"));
		System.out.println(MD5Util.encrypt("342303"));
		System.out.println(MD5Util.encrypt("667331"));
		System.out.println(MD5Util.encrypt("082784"));
		System.out.println(MD5Util.encrypt("060415"));
		System.out.println(MD5Util.encrypt("890907"));
	}
	
	
}
