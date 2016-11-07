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
				  <label class="control-label col-sm-3">入学时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="createdDt"  name="conditions[0].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[0].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[0].rangeFrom}"   id="createdDtId01" name="conditions[0].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "    value="${queryCondition.conditions[0].rangeTo}"  id="createdDtId02" name="conditions[0].rangeTo">
				  </div>
				</div>
			  </div>
          <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">年龄</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="age"  name="conditions[1].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[1].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[1].rangeFrom}"   name="conditions[1].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "    value="${queryCondition.conditions[1].rangeTo}"   name="conditions[1].rangeTo">
				  </div>
				</div>
			  </div>
			  <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">工龄</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="workTime"  name="conditions[2].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[2].rangeType"/> 
					<input type="text" class="form-control "   value="${queryCondition.conditions[2].rangeFrom}"   name="conditions[2].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "    value="${queryCondition.conditions[2].rangeTo}"   name="conditions[2].rangeTo">
				  </div>
				</div>
			  </div>
           
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">学历</label>
              <div class="col-sm-9">
                <input type="hidden"  value="degree"  name="conditions[3].fieldName"/> 
              	<input type="hidden"  value="EQUAL"  name="conditions[3].rangeType"/> 
                  <select class="form-control" name="conditions[3].rangeFrom">
	              	  <option value="" >全部</option>
	                  <option value="10" <c:if test="${queryCondition.conditions[3].rangeFrom == '10'}" >selected</c:if> >研究生教育</option>
	                  <option value="20"  <c:if test="${queryCondition.conditions[3].rangeFrom == '20'}" >selected</c:if>>大学本科</option>
	                  <option value="30"  <c:if test="${queryCondition.conditions[3].rangeFrom == '30'}" >selected</c:if>>专科教育</option>
	                  <option value="40"  <c:if test="${queryCondition.conditions[3].rangeFrom == '40'}" >selected</c:if>>中等职业教育</option>
	                  <option value="50"  <c:if test="${queryCondition.conditions[3].rangeFrom == '50'}" >selected</c:if>>高级技工教育</option>
	                  <option value="60"  <c:if test="${queryCondition.conditions[3].rangeFrom == '60'}" >selected</c:if>>普通高级中学教育</option>
	                  <option value="70"  <c:if test="${queryCondition.conditions[3].rangeFrom == '70'}" >selected</c:if>>初级中学教育</option>
	                  <option value="80"  <c:if test="${queryCondition.conditions[3].rangeFrom == '80'}" >selected</c:if>>小学教育</option>
	                  <option value="90"  <c:if test="${queryCondition.conditions[3].rangeFrom == '90'}" >selected</c:if>>文盲或半文盲</option>
	                  <option value="99"  <c:if test="${queryCondition.conditions[3].rangeFrom == '99'}" >selected</c:if>>其他</option>
                </select> 
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">单位</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="customerName"  name="conditions[4].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[4].rangeType"/> 
                <input type="text" class="form-control "    value="${queryCondition.conditions[4].rangeFrom}"   name="conditions[4].rangeFrom">
              </div>
            </div>
          </div>
                <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">网院</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="schoolChineseName"  name="conditions[5].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[5].rangeType"/> 
                <input type="text" class="form-control "    value="${queryCondition.conditions[5].rangeFrom}"   name="conditions[5].rangeFrom">
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </div> 
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
        <th>年龄</th>
        <th>学历</th>
        <th>性别</th>
        <th>单位</th>
        <th>工龄</th>
        <th>网院</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <tr>
		          <td><input type="checkbox"></td>
		          <td>${resultSet.studentName }<c:if test="${ empty resultSet.studentName }">暂无</c:if></td>
		          <td>	${resultSet.age }<c:if test="${ empty resultSet.age }">暂无</c:if></td>
		          <td>	${resultSet.degreeName}<c:if test="${ empty resultSet.degreeName}">暂无</c:if></td>
		          <td>${resultSet.sex }<c:if test="${ empty resultSet.sex }">暂无</c:if></td>
		          <td>${resultSet.customerName }<c:if test="${ empty resultSet.customerName }">暂无</c:if></td>
		          <td>${resultSet.workTime }<c:if test="${ empty resultSet.workTime }">暂无</c:if></td>
		          <td>${resultSet.schoolChineseName }<c:if test="${ empty resultSet.schoolChineseName }">暂无</c:if></td>
        </tr>
          	</c:forEach>
          	</c:when>
          	<c:otherwise>
          			<td colspan="7"  align="center">暂无数据</td>
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
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
</section>
</body>
<script>
    $("#createdDtId01").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'});  
    $("#createdDtId02").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd', 
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
