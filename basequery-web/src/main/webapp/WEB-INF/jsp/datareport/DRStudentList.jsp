<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="reset">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<jsp:include page="/WEB-INF/jsp/common/jslibs.jsp"/>
<script type="text/javascript"  src="<%=request.getContextPath()%>/static/dist/js/area.js"></script>
</head>
<body class="inner-page-body">
	<section class="content">
		<div class="box">
		    <div class="box-body">
			    <div class="box-footer fr col-md-2" style="border-top:0;">
					<div><button type="button" class="btn btn-primary">搜索</button></div>
					<div class="pad-t15"><button type="button" class="btn btn-default">重置</button></div>
					<div class="pad-t15"><button type="button" class="btn btn-default drop-down">展开条件 ▾</button></div>
			    </div>
			    <div class="form-horizontal oh slide_box col-md-10">
        			<div class="row reset-form-horizontal pad-t10">
        				<div class="col-md-12">
				            <div class="form-group">
								<label class="control-label col-sm-1">名字</label>
								<div class="col-sm-3">
								    <input type="hidden"  value="userName"  name="conditions[0].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[0].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[0].rangeFrom}"  name="conditions[0].rangeFrom">
								</div>
								<label class="control-label col-sm-1">身份证</label>
								<div class="col-sm-3">
									<input type="hidden"  value="idCord"  name="conditions[1].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[1].rangeFrom}"  name="conditions[1].rangeFrom">
								</div>
								<label class="control-label col-sm-1">订单号</label>
								<div class="col-sm-3">
									<input type="hidden"  value="orderId"  name="conditions[2].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[2].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[2].rangeFrom}"  name="conditions[2].rangeFrom">
								</div>
				            </div>
				         </div>
				         <div class="col-md-12">
				            <div class="form-group">
								<label class="control-label col-sm-1">手机号</label>
								<div class="col-sm-3">
									<input type="hidden"  value="mobile"  name="conditions[3].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[3].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[3].rangeFrom}"  name="conditions[3].rangeFrom">
								</div>
								<label class="control-label col-sm-1">学习中心</label>
								<div class="col-sm-3">
									<input type="hidden"  value="learncenterName"  name="conditions[4].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[4].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[4].rangeFrom}"  name="conditions[4].rangeFrom">
								</div>
								<label class="control-label col-sm-1">院校</label>
								<div class="col-sm-3">
									<input type="hidden"  value="collegesName"  name="conditions[5].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[5].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[5].rangeFrom}"  name="conditions[5].rangeFrom">
								</div>
				            </div>
				         </div>
				         <div class="col-md-12">
				            <div class="form-group">
								<label class="control-label col-sm-1">产品</label>
								<div class="col-sm-3">
									<input type="hidden"  value="productName"  name="conditions[6].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[6].rangeType"/> 
					                <input type="text" class="form-control"   value="${queryCondition.conditions[6].rangeFrom}"  name="conditions[6].rangeFrom">
								</div>
								<label class="control-label col-sm-1">下单时间</label>
								<div class="col-sm-3">
									<input type="hidden"  value="addDate"  name="conditions[7].fieldName"/> 
					              	<input type="hidden"  value="INCLUDE"  name="conditions[7].rangeType"/> 
					                <input type="text" class="form-control" id="createdDtId01"  value="${queryCondition.conditions[7].rangeFrom}"  name="conditions[7].rangeFrom">
								</div>
								<label class="control-label col-sm-1" style="text-align: center;">至</label>
								<div class="col-sm-3">
					                <input type="text" class="form-control"  id="createdDtId02" value="${queryCondition.conditions[7].rangeTo}"  name="conditions[7].rangeTo">
								</div>
				            </div>
				         </div>
        			</div>
        		</div>
        		<div class="form-horizontal col-md-10 oh pad-t15 down-box">
        			<div class="row reset-form-horizontal state">
        			  <!--  
	        			<div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">咨询状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">未跟进</a>
									</div>
									<div class="sib">
										<span>跟进 <input type="text" class="form-control form-txt" value="" name=""> 次</span>
									</div>
								</div>
				            </div>
					    </div>
					    -->
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">报读状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">未报读</a>
										<a class="zt-btn">已报读</a>
									</div>
								</div>
				            </div>
					    </div>
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">缴费状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib zf-box">
										<a class="zt-btn yzf">已支付</a>
										<span>（</span>
										<a class="zt-btn yzf-a">全额</a>
										<a class="zt-btn yzf-a">分期</a>
										<a class="zt-btn yzf-a">学年</a>
										<span>）</span>
										<a class="zt-btn wzf">未支付</a>
										<span>（</span>
										<a class="zt-btn wzf-a">已付定金</a>
										<a class="zt-btn wzf-a">未付定金</a>
										<span>）</span>
									</div>
								</div>
				            </div>
					    </div>
					    <!--  
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">入读状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已发帐号</a>
										<a class="zt-btn">未发帐号</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已登录</a>
										<a class="zt-btn">未登录</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已发教材</a>
										<a class="zt-btn">未发教材</a>
									</div>
								</div>
				            </div>
					    </div>
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">优惠状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已获得</a>
										<a class="zt-btn">未获得</a>
									</div>
									<div class="sib">
										<a class="zt-btn">无赠品</a>
										<a class="zt-btn">赠品已送</a>
										<a class="zt-btn">赠品未送</a>
									</div>
								</div>
				            </div>
					    </div>
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">补贴状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已申请补贴</a>
										<a class="zt-btn">未申请补贴</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已通过审核</a>
										<a class="zt-btn">未通过审核</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已发放</a>
										<a class="zt-btn">未发放</a>
									</div>
								</div>
				            </div>
					    </div>
					    -->
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">学籍状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已交资料</a>
										<a class="zt-btn">未交资料</a>
										<a class="zt-btn">资料不齐</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已入学籍</a>
										<a class="zt-btn">未入学籍</a>
									</div>
								</div>
				            </div>
					    </div>
					    <!-- 
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">学习状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已分班</a>
										<a class="zt-btn">未分班</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已登录</a>
										<a class="zt-btn">未登录</a>
									</div>
									<div class="sib">
										<span>学分低于 <input type="text" class="form-control form-txt" value="" name=""> 分</span>
										<span>完成课程低于 <input type="text" class="form-control form-txt" value="" name=""> 分</span>
										<span>超过 <input type="text" class="form-control form-txt" value="" name=""> 天未登入</span>
									</div>
								</div>
				            </div>
					    </div>
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">考试状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<span>已预约少于 <input type="text" class="form-control form-txt" value="" name=""> 门</span>
										<span>已考试少于 <input type="text" class="form-control form-txt" value="" name=""> 门</span>
										<span>已通过少于 <input type="text" class="form-control form-txt" value="" name=""> 门</span>
									</div>
								</div>
				            </div>
					    </div>
					    <div class="col-md-12">
				            <div class="form-group">
				            	<label class="control-label col-sm-1">毕业状态</label>
								<div class="col-sm-11 condition-state">
									<a class="bx-btn cur">不限</a>
									<div class="sib">
										<a class="zt-btn">已满足</a>
										<a class="zt-btn">未满足</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已提交毕设</a>
										<a class="zt-btn">未提交毕设</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已参加答辩</a>
										<a class="zt-btn">未参加答辩</a>
									</div>
									<div class="sib">
										<a class="zt-btn">已取证</a>
										<a class="zt-btn">未取证</a>
									</div>
								</div>
				            </div>
					    </div>
					     -->

				    </div>
        		</div>
		    </div>
		</div>
		<div class="callout callout-info">
		    <p>根据查询条件找到学员为：82人</p>
		</div>
		<div class="box margin-bottom-none">
			<!-- <div class="box-header with-border">
				<div class="fr">
					<button class="btn btn-block btn-success btn-outport"><i class="fa fa-fw fa-sign-out"></i> 导出学员信息</button>
				</div>
			</div> -->
			<div class="form-horizontal col-md-10 oh pad-t15">
    			<div class="row reset-form-horizontal state">
    				<div class="col-md-12">
			            <div class="form-group">
			            	<label class="control-label col-sm-1">状态</label>
							<div class="col-sm-11 result-state">
								<a class="cur">报读</a>
								<a class="cur">缴费</a>
								<a class="cur">学籍</a>
							  <!-- 
								<a class="cur">咨询</a>
								<a class="cur">优惠</a>
								<a class="cur">入读</a>
								<a class="cur">补贴</a>
								<a class="cur">学习</a>
								<a class="cur">考试</a>
								<a class="cur">毕业</a>
								 -->
							</div>
			            </div>
				    </div>
    			</div>
        	</div>
			<div class="box-body">
				<table id="dtable" class="table table-bordered table-striped table-container">
			      <thead>
			        <tr>
			          <th>序列号</th>
			          <th>学员</th>
			          <th>手机号</th>
			          <th>身份证</th>
			          <th>订单号</th>
			          <th>学习中心</th>
			          <th>院校</th>
			          <th>报读专业</th>
			          <th>更新时间</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr>
			          <td>1</td>
			          <td>梁晓婷</td>
			          <td>13725278090</td>
			          <td>440181199809031845</td>
			          <td>1999087732648</td>
			          <td>领航学习中心</td>
			          <td>国家开放大学（广州）实验学院</td>
			          <td>工商管理（专升本）</td>
			          <td>2017-01-01</td>
			        </tr>
			        <tr>
			          <td>1/状态</td>
			          <td colspan="8">
				          <div class="result-box">
				          	<div class="result-list">
				          		<span class="result-sp">报读</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已报读</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">缴费</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">学籍</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<!--  
				          	<div class="result-list">
				          		<span class="result-sp">咨询</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">优惠</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">入读</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">补贴</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">学习</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">考试</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">毕业</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	-->
				          </div>
			          </td>
			        </tr>
			        <tr>
			          <td>1</td>
			          <td>梁晓婷</td>
			          <td>13725278090</td>
			          <td>440181199809031845</td>
			          <td>1999087732648</td>
			          <td>领航学习中心</td>
			          <td>国家开放大学（广州）实验学院</td>
			          <td>工商管理（专升本）</td>
			          <td>2017-01-01</td>
			        </tr>
			        <tr>
			          <td>1/状态</td>
			          <td colspan="8">
				          <div class="result-box">
				          	<div class="result-list">
				          		<span class="result-sp">咨询</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">报读</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">优惠</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">缴费</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">入读</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">补贴</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">学籍</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">学习</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">考试</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          	<div class="result-list">
				          		<span class="result-sp">毕业</span>
				          		<ul class="result-ul">
				          			<li><i class="rl-1">√</i>已咨询</li>
				          			<li><i class="rl-2">×</i>已跟进</li>
				          			<li><i class="rl-3">!</i>已跟进</li>
				          		</ul>
				          		<span class="result-line">➞</span>
				          	</div>
				          </div>
			          </td>
			        </tr>
			      </tbody>
			      </table>
				<div class="pageBox">
					<div class="page-container page-container-sm margin_t10 clearfix">
						<input type="hidden"  value="0" name="indexCurrent">
						<input type="hidden"  value="1" name="pageCurrent">
						<div class="pageing-info">
							<div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">
								1900111条，共 190012 页，到第
								<input type="text" id="page" name="page" class="form-control jump-page-input" value="2" onkeyup="changeNumber()" onblur="changeNumber()">
								页
								<button class="btn btn-block btn-default sure-btn" onclick="toPage(document.forms[0].page.value)">
									确定
								</button>
							</div>
						</div>
						<div class="pageing-list">
							<div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
								<ul class="pagination">
									<li class="paginate_button previous disabled" id="DataTables_Table_0_previous">
										<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0">
											上一页
										</a>
									</li>
									<li class="paginate_button active">
										<a href="javascript:toPage('1');" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">
											1
										</a>
									</li>
									<li class="paginate_button ">
										<a href="javascript:toPage('2');" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">
											2
										</a>
									</li>
									<li class="paginate_button ">
										<a href="javascript:toPage('3');" aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0">
											3
										</a>
									</li>
									<li class="paginate_button next" id="DataTables_Table_0_next">
										<a href="javascript:toPage('2');" aria-controls="DataTables_Table_0" data-dt-idx="100" tabindex="0">
											下一页
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<script>
					function toPage(index) {
					    if (index == "") {
					        alert("请输入跳转的页面数！");
					        return;
					    }
						if(isNaN(document.forms[0].page.value)) {
							alert("跳转页面必须为数值型");
							return;
						}
						if(index == 0){
					    	index = 1;
					    }
						 if (index > 190012)
					    		document.forms[0].pageCurrent.value = "190012" ;
					    	else
					    		document.forms[0].pageCurrent.value = index;
					    document.forms[0].submit();
					}
					</script>
				</div>
			</div>
		</div>
	</section>
	<footer class="site-footer">
		<span>远程教育数据中心</span>
	</footer>

</body>
<!-- css 、js -->
<style type="text/css">
.form-txt{width: 48px;height: 26px;padding: 0px 3px;text-align: center;display: inline-block;font-size: 13px;color: #888;line-height: 24px;font-family: "宋体";}
.state a,.state span{display: inline-block;float: left;height: 26px;line-height: 26px;margin:4px 15px 0 0;padding: 0 8px;color: #666;font-size: 13px;font-family: "宋体";}
.state a{cursor: pointer;}

.state a.yzf-a,.state a.wzf-a{color:#999;margin-right: 0px;font-size: 12px;}
.state a.disabled{opacity: 0.3;filter:alpha(opacity=30);}
.state a.wzf{margin-left: 40px;}
.state .zf-box a,.state .zf-box span{margin-right: 0;}
.state .zf-box span{color:#999;}
.state a.cur{background: #3c8dbc;color: #fff;}
.sib{float: left;}

.result-list{font-size: 12px;padding: 10px 0 10px 34px;width: 130px;display: inline-block;position: relative;color: #999;}
.result-sp{display: inline-block;height: 26px;line-height: 24px;padding: 0 8px;border:1px solid #ccc;border-radius: 2px;background: #f4f4f4;color: #222d32;cursor: pointer;}
.result-sp:hover{background: #30a5ff;border:1px solid #30a5ff;color: #fff;}
.result-ul{padding: 0;margin: 6px 0 0 0;list-style: none;line-height: 22px;color: #999;}
.result-ul li i{display: inline-block;width: 22px;height: 22px;text-align: center;float: left;font-style: normal;}
.rl-1{color: #68b92c;}
.rl-2{color: #ff5b5b;}
.rl-3{color: #ff915b;}
.result-line{position: absolute;right: 0;top: 10px;font-size: 20px;display: block;overflow: hidden;color: #ddd;width: 12px;text-indent: -7px;}
.result-box .result-list:last-child .result-line{display: none;}
.down-box{display: none;}
</style>
<script>
    $("#createdDtId01").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'});
    $("#createdDtId02").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyy-mm-dd',
        onSelect: function(dateText,inst){
            var time=dateText.split("-");
            var year = time[0];
            var month = time[1];
            var day = time[2];
            $("#createdDtId02").datepicker(
                'option', 'minDate', new Date(year, month - 1, day)
            );
        }
    });
</script>
<script type="text/javascript">
   $(document).ready(function(){
   		// 展开下拉条件
		$(".drop-down").click(function(){
			var $this = $(this),
				$dbox =$('.down-box');
			if($dbox.is(':visible')){
				$dbox.slideUp();
				$this.html('展开条件 ▾');
			}else{
				$dbox.slideDown();
				$this.html('收起条件 ▴');
			}
		});

		// 下拉条件筛选
		$('.zt-btn').click(function(){
			$(this).addClass('cur').siblings().removeClass('cur');
			$(this).parent().siblings('.bx-btn').removeClass('cur');
		});
		$('.bx-btn').click(function(){
			$(this).addClass('cur').siblings().children('a').removeClass('cur');
			$(this).siblings().children('.yzf-a,.wzf-a').removeClass('disabled');
			$(this).siblings().find("input[type='text']").val('');
		});
		// 输入框获得值
		$(".sib input[type='text']").focus(function(){
		  	$(this).parents('.sib').siblings('.bx-btn').removeClass('cur');
		});
		$(".sib input[type='text']").blur(function(){
			var $this = $(this),
				$txt = $this.parents('.sib').find("input[type='text']"),
				$length = $this.parents('.sib').siblings().find('.cur').length,
				$v = '';
			$txt.each(function() {
				var $val = $(this).val();
				$v+=$val;
				if($v != ''){
					return false;
				}
			});
			if(!$v && $length == 0){
				$(this).parents('.sib').siblings('.bx-btn').addClass('cur');
			}
		});

		// 缴费状态
		$('.yzf').click(function(){
			$('.yzf-a').addClass('disabled');
			$('.wzf-a').removeClass('disabled');
		});
		$('.wzf').click(function(){
			$('.wzf-a').addClass('disabled');
			$('.yzf-a').removeClass('disabled');
		});
		$('.yzf-a').click(function(){
			$('.yzf-a,.wzf-a').removeClass('disabled');
		});
		$('.wzf-a').click(function(){
			$('.yzf-a,.wzf-a').removeClass('disabled');
		});

		// 结果筛选
	    $(".result-state a").click(function(){
	    	var $this = $(this),
	    		index = $this.index(),
	    		count = $this.parent().find('.cur').length;
	    	$('.result-box').each(function(){
	    		var $rblist = $(this).children('.result-list').eq(index);
    			if($rblist.is(':visible') && count > 1){
					$rblist.hide();
	    			$this.removeClass('cur');
		    	}else{
		    		$rblist.show();
		    		$this.addClass('cur');
		    	}
    		});
	    });

  });
</script>

</html>
