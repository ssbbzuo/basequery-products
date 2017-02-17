package com.eenet.basequery.datareport;


import java.util.Date;

import com.eenet.base.BaseEntity;

public class DRStudentDataReport extends BaseEntity{

	private static final long serialVersionUID = -4540913346929793572L;
	private String userId;//学员ID
	private String userName;//学员名称
	private String idCord;//身份证
	private String mobile;//手机
//	private Date dataDt;//创建时间
	private String atId;//公用库学员ID
	/**支付订单表**/
	private String paymentId;//ID
	private String orderId;//订单ID
	private String mergerPayNo;//缴费单号
//	private String subjectType;//收费项
//	private String payRecordType;//收费项
	private String payMeans;//缴费方式
//	private String firmAmt;//优惠金额
//	private String recAmt;//应缴金额
//	private Date recDate;//截止日期
//	private String payAmt;//实收日期
//	private Date payDate;//实收日期
//	private String isPayFonfirm;//财务确认标识
//	private String receiptFlag;//收据标识
//	private String invoiceFlag;//发票标识
	private String payStatus;//缴费状态
	private String dataDt;//订单数据日期
	
	/***报读产品***/
	private String  productId;
	private String  productName; //产品名称
	private String  collegesCode; //院校编码
	private String  collegesName; //院校名称
	private String  signupLevel; //层级
	private String  specialtyId; //学历专业ID
	
	/***学籍表***/
	private String reguserId;;  //学籍学员ID
//	private String majorId;  //专业ID
	private String isDataR;  //已交资料标识
	private String  isRegist;  //已入学籍标识
	private String  isDataG;  //资料齐全标识
	private String  studNo;  //学号
//	private Date grantDt; //学号发放时间
//	private String  studType;  //学员类型
//	private String  isGood;  //个人信息
//	private String  idcardUp;  //身份证
//	private String  photoUp;  //照片
//	private String  isSign;  //签名
	private String  isCheck;  //报读资格
	private String  dataAudit;  //资料审核
//	private Date  DATA_DT; //数据日期
	
	/**报读表**/
	private String  signupId;
	private String  orderSn; //订单号
	private String  addDate; //下单日期
	private String  learncenterCode; //学习中心编码
	private String  learncenterName; //学习中心名称
//	private String  orderFrom; //信息来源
	private String  signupStatus; //报读状态
//	private String  DATA_DT; //数据日期

	
}
