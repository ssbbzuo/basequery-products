<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="/WEB-INF/sysdata-tag.tld" prefix="eenet"%>
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
  <!-- 
<section class="content-header">
  <h1>
  平台查询
  </h1>
  <ol class="breadcrumb">
    <li><a href="/"><i class="fa fa-home"></i> 首页</a></li>
    <li class="active">产品查询</li>
  </ol>
</section>
   -->
<section class="content">
  <div class="box">
     <div class="box-body">
     	<form method="post">
	    <div class="box-footer fr left120" style="border-top:0;">
	      <div><button type="button" class="btn btn-primary">搜索</button></div>
	      <div class="margin_t20"><button type="button" class="btn btn-default down_btn">高级搜索</button></div>
	    </div>
    
      <div class="form-horizontal oh slide_box">
        <div class="row reset-form-horizontal pad-t15">
          
       		<div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">激活时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="activateDt"  name="conditions[0].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[0].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeFrom}"  id="activateDtId01" name="conditions[0].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeTo}"  id="activateDtId02" name="conditions[0].rangeTo">
				  </div>
				</div>
			  </div>
			  <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">创建时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="createdDt"  name="conditions[1].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[1].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[1].rangeFrom}"  id="createdDtId01" name="conditions[1].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "   value="${queryCondition.conditions[1].rangeTo}"  id="createdDtId02" name="conditions[1].rangeTo">
				  </div>
				</div>
			  </div>
			<div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">所属区域</label>
              <div class="col-sm-3">
              		<input type="hidden"  value="province"  name="conditions[7].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[7].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[7].rangeFrom}"  name="provinceValue"/> 
              		<select class="form-control selectcssquery" name="conditions[7].rangeFrom"></select>
              </div>
               <div class="col-sm-3">
               		<input type="hidden"  value="city"  name="conditions[5].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[5].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[5].rangeFrom}"  name="cityValue"/> 
              		<select class="form-control selectcssquery" name="conditions[5].rangeFrom">
              		</select>
              </div>
              	 <div class="col-sm-3">
              	 	<input type="hidden"  value="district"  name="conditions[6].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[6].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[6].rangeFrom}"  name="districtValue"/> 
              		<select class="form-control selectcssquery" name="conditions[6].rangeFrom">
              		</select>
              </div>
          </div>
          </div>
			   <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">企业规模</label>
              <div class="col-sm-9">
                <input type="hidden"  value="personsScale"  name="conditions[2].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[2].rangeType"/> 
                 <select class="form-control" name="conditions[2].rangeFrom">
                	 <eenet:sysdata typeCode="COMPANY_SCALE"  curValue="${queryCondition.conditions[2].rangeFrom}"></eenet:sysdata>
                 </select>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">企业性质</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="customerProp"  name="conditions[3].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[3].rangeType"/> 
              	  <select class="form-control" name="conditions[3].rangeFrom">
                	 <eenet:sysdata typeCode="ORG_PROPERTY"  curValue="${queryCondition.conditions[3].rangeFrom}"></eenet:sysdata>
                 </select>
              </div>
            </div>
          </div>
          
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">客户</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="customerName"  name="conditions[4].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[4].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[4].rangeFrom}"   name="conditions[4].rangeFrom">
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </div> 
    </div> 
  
    <div class="callout callout-info">
        <p>当前客户总数为：${pagination.total }</p>
   </div>
   
  <div class="box margin-bottom-none">
    <div class="box-header with-border">
      <div class="fr">
      <!-- 
        <button class="btn btn-block btn-success btn-outport"><i class="fa fa-fw fa-sign-out"></i> 导出学员信息</button>
         -->
      </div>
    </div>
    <div class="box-body">
      <table id="dtable" class="table table-bordered table-striped table-container">
      <thead>
        <tr>
        <th><input type="checkbox" class="select-all"></th>
        <th>客户</th>
        <th>客户编码</th>
        <th>区域</th>     
        <th>规模</th>
        <th>性质</th>
        <th>合作状态</th>
        <th>服务人员</th>
        <th>激活时间</th>
        <th>创建时间</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <tr>
		          <td><input type="checkbox"></td>
		      	  <td>${resultSet.customerName }<c:if test="${ empty resultSet.customerName }">暂无</c:if></td>
		          <td>	${resultSet.customerCode }<c:if test="${ empty resultSet.customerCode }">暂无</c:if></td>
		          <td>	${resultSet.provinceName }${resultSet.cityName }${resultSet.districtName }
		          		<c:if test="${ empty resultSet.provinceName &&  empty resultSet.cityName  && empty resultSet.districtName }">暂无</c:if>
		          	</td>
		          <td>${resultSet.personsScale }<c:if test="${ empty resultSet.personsScale }">暂无</c:if></td>
		          <td>${resultSet.customerPropName }<c:if test="${ empty resultSet.customerPropName }">暂无</c:if></td>
		          <td>${resultSet.cooperateStatusName }<c:if test="${ empty resultSet.cooperateStatusName }">暂无</c:if></td>
		          <td>${resultSet.staffName }<c:if test="${ empty resultSet.staffName }">暂无</c:if></td>
		         <td><fmt:formatDate  value="${resultSet.activateDt }"  type="both" pattern="yyyy-MM-dd " /></td>
		         <td><fmt:formatDate  value="${resultSet.createdDt }"  type="both" pattern="yyyy-MM-dd " /></td>
        </tr>
          	</c:forEach>
          	</c:when>
          	<c:otherwise>
          			<td colspan="7"  align="center">暂无数据</td>
          	</c:otherwise>
           </c:choose>
      </tbody>
      </table>
      <jsp:include page="/WEB-INF/jsp/common/pagination.jsp"/>
      </form>
    </div>
  </div>
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
</section>
</body>
<script>
	$("#createdDtId01").datepicker({language: 'zh-CN', clearBtn: true,autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'})
	$("#createdDtId02").datepicker({language: 'zh-CN',clearBtn: true,autoclose: true, todayHighlight: true,format:'yyyy-mm-dd' })
	
	$("#activateDtId01").datepicker({language: 'zh-CN', clearBtn: true,autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'})
	$("#activateDtId02").datepicker({language: 'zh-CN',clearBtn: true,autoclose: true, todayHighlight: true,format:'yyyy-mm-dd' })
</script>
</html>
