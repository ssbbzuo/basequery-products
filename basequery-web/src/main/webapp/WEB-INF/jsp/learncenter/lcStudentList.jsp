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
  产品查询
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
	    <div class="box-footer fr col-md-2" style="border-top:0;">
	      <!-- <div class="pull-right"><button type="button" class="btn btn-default">重置</button></div> -->
	      <div><button type="button" class="btn btn-primary">搜索</button></div>
	      <div class="pad-t15"><button type="button" class="btn btn-default down_btn">高级搜索</button></div>
	    </div>
    
      <div class="form-horizontal oh slide_box col-md-10">
        <div class="row reset-form-horizontal pad-t10">
          
       
       
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">学员名称</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="studentName"  name="conditions[0].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[0].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeFrom}"  name="conditions[0].rangeFrom">
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">手机</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="mobile"  name="conditions[1].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[1].rangeFrom}"  name="conditions[1].rangeFrom">
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">身份证</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="idCard"  name="conditions[2].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[2].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[2].rangeFrom}"  name="conditions[2].rangeFrom">
              </div>
            </div>
          </div>
            <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">所属区域</label>
              <div class="col-sm-3">
              		<input type="hidden"  value="province"  name="conditions[3].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[3].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[3].rangeFrom}"  name="provinceValue"/> 
              		<select class="form-control" name="conditions[3].rangeFrom"></select>
              </div>
               <div class="col-sm-3">
               		<input type="hidden"  value="city"  name="conditions[4].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[4].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[4].rangeFrom}"  name="cityValue"/> 
              		<select class="form-control" name="conditions[4].rangeFrom">
              		</select>
              </div>
              	 <div class="col-sm-3">
              	 	<input type="hidden"  value="district"  name="conditions[5].fieldName"/> 
					<input type="hidden"  value="EQUAL"  name="conditions[5].rangeType"/> 
					<input type="hidden"  value="${queryCondition.conditions[5].rangeFrom}"  name="districtValue"/> 
              		<select class="form-control" name="conditions[5].rangeFrom">
              		</select>
              </div>
          </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">客户</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="unitCode"  name="conditions[6].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[6].rangeType"/> 
                <input type="text" class="form-control "  value="${queryCondition.conditions[6].rangeFrom}"   name="conditions[6].rangeFrom">
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div> 
  </div>
    
  </div>
  <div class="callout callout-info">
        <p>当前学员用户总数为：${pagination.total }</p>
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
        <th>学员</th>
        <th>手机</th>
        <th>职位</th>
        <th>性别</th>
        <th>年龄</th>
        <th>最高学历</th>
        <th>身份证</th>
        <th>客户</th>
        <th>创建时间</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <tr>
		          <td><input type="checkbox"></td>
		          <td>${resultSet.studentName }<c:if test="${ empty resultSet.studentName }">暂无</c:if></td>
		          <td>${resultSet.mobile }<c:if test="${ empty resultSet.mobile }">暂无</c:if></td>
		          <td>${resultSet.post }<c:if test="${ empty resultSet.post }">暂无</c:if></td>
		          <td>${resultSet.sex }<c:if test="${ empty resultSet.sex }">暂无</c:if></td>
		          <td>${resultSet.age}<c:if test="${ empty resultSet.age }">暂无</c:if></td>
		          <td>${resultSet.degreeName }<c:if test="${ empty resultSet.degreeName }">暂无</c:if></td>
		          <td>${resultSet.idCard }<c:if test="${ empty resultSet.idCard }">暂无</c:if></td>
		          <td>${resultSet.unitCode }<c:if test="${ empty resultSet.unitCode }">暂无</c:if></td>
		          <td><fmt:formatDate  value="${resultSet.createdDt }"  type="both" pattern="yyyy-MM-dd " /></td>
        </tr>
          	</c:forEach>
          	</c:when>
          	<c:otherwise>
          			<td colspan="11" align="center">暂无数据</td>
          	</c:otherwise>
           </c:choose>
      </tbody>
      </table>
      <div class="pageBox">
      	<jsp:include page="/WEB-INF/jsp/common/pagination.jsp"/>
      </div>
   </form>
    </div>
  </div>
</section>
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
</body>
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
</html>
