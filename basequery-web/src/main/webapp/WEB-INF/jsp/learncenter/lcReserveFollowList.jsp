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
	    <div class="box-footer fr left120" style="border-top:0;">
	      <!-- <div class="pull-right"><button type="button" class="btn btn-default">重置</button></div> -->
	      <div><button type="button" class="btn btn-primary">搜索</button></div>
	      <div class="margin_t20"><button type="button" class="btn btn-default down_btn">高级搜索</button></div>
	    </div>
    
      <div class="form-horizontal oh slide_box">
        <div class="row reset-form-horizontal pad-t15">
          
       <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">预报读时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="createdDt"  name="conditions[0].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[0].rangeType"/> 
					<input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeFrom}"  id="createdDtId01" name="conditions[0].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeTo}"  id="createdDtId02" name="conditions[0].rangeTo">
				  </div>
				</div>
			  </div>
			  <div class="col-md-12	">
				<div class="form-group">
				  <label class="control-label col-sm-3">跟踪时间</label>
				  <div class="col-sm-4">
					<input type="hidden"  value="followDate"  name="conditions[1].fieldName"/> 
					<input type="hidden"  value="LESS2GREAT"  name="conditions[1].rangeType"/> 
					<input type="text" class="form-control "  value="${queryCondition.conditions[1].rangeFrom}"  id="followDate01" name="conditions[1].rangeFrom">
				  </div>
				  <div class="col-sm-1" style="text-align: center;line-height: 34px;">
					至
				  </div>
				   <div class="col-sm-4">
					<input type="text" class="form-control "  value="${queryCondition.conditions[1].rangeTo}"  id="followDate02" name="conditions[1].rangeTo">
				  </div>
				</div>
			  </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">跟踪结果</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="followResult"  name="conditions[5].fieldName"/> 
              	<input type="hidden"  value="EQUAL"  name="conditions[5].rangeType"/> 
                <select class="form-control" name="conditions[5].rangeFrom">
						<eenet:sysdata typeCode="FOLLOW_RESULT"  curValue="${queryCondition.conditions[5].rangeFrom}"></eenet:sysdata>
                </select>
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">招生顾问</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="salemanName"  name="conditions[2].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[2].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[2].rangeFrom}"  name="conditions[2].rangeFrom">
              </div>
            </div>
          </div>
           <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">班主任</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="headTeacherName"  name="conditions[3].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[3].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[3].rangeFrom}"  name="conditions[3].rangeFrom">
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label class="control-label col-sm-3">学习中心</label>
              <div class="col-sm-9">
              	<input type="hidden"  value="learncenterName"  name="conditions[4].fieldName"/> 
              	<input type="hidden"  value="INCLUDE"  name="conditions[4].rangeType"/> 
                 <input type="text" class="form-control "   value="${queryCondition.conditions[4].rangeFrom}"  name="conditions[4].rangeFrom">
              </div>
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
        <th>手机</th>
        <th>招生顾问</th>
        <th>班主任</th>
        <th>跟踪结果</th>
        <th>跟踪内容</th>
        <th>招生单号</th>
        <th>预报读订单</th>
        <th>跟踪时间</th>
        <th>预报读时间</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <tr>
		          <td><input type="checkbox"></td>
		          <td>${resultSet.userName }<c:if test="${ empty resultSet.userName }">暂无</c:if></td>
		          <td>
		          			<c:if test="${ empty resultSet.mobile || resultSet.mobile eq 0  }">暂无</c:if>
		         		 	<c:if test="${ not empty resultSet.mobile &&  resultSet.mobile ne 0  }">${resultSet.mobile }</c:if>
		          </td>
		          <td>${resultSet.salemanName }<c:if test="${ empty resultSet.salemanName }">暂无</c:if></td>
		          <td>${resultSet.headTeacherName }<c:if test="${ empty resultSet.headTeacherName }">暂无</c:if></td>
		          <td>${resultSet.followResultName }<c:if test="${ empty resultSet.followResultName }">暂无</c:if></td>
		          <td>${resultSet.followContent }<c:if test="${ empty resultSet.followContent }">暂无</c:if></td>
		          <td>${resultSet.enrolNo}<c:if test="${ empty resultSet.enrolNo }">暂无</c:if></td>
		          <td>${resultSet.consultNo }<c:if test="${ empty resultSet.consultNo }">暂无</c:if></td>
		          <td><fmt:formatDate  value="${resultSet.followDate }"  type="both" pattern="yyyy-MM-dd " /></td>
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
      <jsp:include page="/WEB-INF/jsp/common/pagination.jsp"/>
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
    $("#followDate01").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyy-mm-dd'});  
    $("#followDate02").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyy-mm-dd',
        onSelect: function(dateText,inst){  
            var time=dateText.split("-");  
            var year = time[0];  
            var month = time[1];  
            var day = time[2];  
            $("#followDate02").datepicker(  
                'option', 'minDate', new Date(year, month - 1, day)  
            );  
        }  
    });  
</script>
</html>
