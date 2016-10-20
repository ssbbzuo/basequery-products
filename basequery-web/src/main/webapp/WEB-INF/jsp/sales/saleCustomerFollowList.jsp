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
				  <label class="control-label col-sm-3">跟进时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="operatorDt"  name="conditions[0].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[0].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeFrom}"  id="operatorDtId01" name="conditions[0].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeTo}"  id="operatorDtId02" name="conditions[0].rangeTo">
				  </div>
				</div>
			  </div>
			  <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">市场人员</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="operatorName"  name="conditions[1].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/> 
                <input type="text" class="form-control "   value="${queryCondition.conditions[1].rangeFrom}"   name="conditions[1].rangeFrom">
              </div>
            </div>
          </div>
         
        <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">所属区域</label>
              <div class="col-sm-3">
              		<input type="hidden"  value="province"  name="conditions[2].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[2].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[2].rangeFrom}"  name="provinceValue"/> 
              		<select class="form-control" name="conditions[2].rangeFrom"></select>
              </div>
               <div class="col-sm-3">
               		<input type="hidden"  value="city"  name="conditions[4].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[4].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[4].rangeFrom}"  name="cityValue"/> 
              		<select class="form-control" name="conditions[4].rangeFrom">
              		</select>
              </div>
              	 <div class="col-sm-3">
              	 	<input type="hidden"  value="district"  name="conditions[3].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[3].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[3].rangeFrom}"  name="districtValue"/> 
              		<select class="form-control" name="conditions[3].rangeFrom">
              		</select>
              </div>
          </div>
          </div>
         
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">客户</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="customerName"  name="conditions[5].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[5].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[5].rangeFrom}"   name="conditions[5].rangeFrom">
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </div> 
    </div> 
  
    <div class="callout callout-info">
        <p>当前客户跟踪记录数为：${pagination.total }</p>
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
        <th>跟进人</th>     
        <th>跟进类型</th>
        <th>跟进意向</th>
        <th>跟进内容</th>
        <th>邮件跟进状态</th>
        <th>跟进时间</th>
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
		          <td>${resultSet.operatorName }<c:if test="${ empty resultSet.operatorName }">暂无</c:if></td>
		          <td>${resultSet.followTypeName }<c:if test="${ empty resultSet.followTypeName }">暂无</c:if></td>
		          <td>${resultSet.intendStatusName }<c:if test="${ empty resultSet.intendStatusName }">暂无</c:if></td>
		          <td>${resultSet.followContent }<c:if test="${ empty resultSet.followContent }">暂无</c:if></td>
		          <td>${resultSet.emailStatusName }<c:if test="${ empty resultSet.emailStatusName }">暂无</c:if></td>
		         <td><fmt:formatDate  value="${resultSet.operatorDt }"  type="both" pattern="yyyy-MM-dd " /></td>
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
    $("#operatorDtId01").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'});  
    $("#operatorDtId02").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyy-mm-dd',
        onSelect: function(dateText,inst){  
            var time=dateText.split("-");  
            var year = time[0];  
            var month = time[1];  
            var day = time[2];  
            $("#operatorDtId02").datepicker(  
                'option', 'minDate', new Date(year, month - 1, day)  
            );  
        }  
    });  
</script>
</html>
