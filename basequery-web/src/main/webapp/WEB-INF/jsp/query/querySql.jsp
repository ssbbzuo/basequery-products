<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="reset">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<script src="<%=request.getContextPath() %>/static/plugins/jQuery/jQuery-2.1.4.min.js"></script> 
<style>
.tr1 {
	font-size: small;
}

.tr2 {
	font-size: x-small;
	background-color: gray;
}
</style>

</head>
<body text="#000000">
  <!-- 
<section class="content-header">
  <h1>
  课程查询
  </h1>
  <ol class="breadcrumb">
    <li><a href="/"><i class="fa fa-home"></i> 首页</a></li>
    <li class="active">产品查询</li>
  </ol>
</section>
   -->
<section class="content">
  <table width="100%" align="center" cellpadding="1" cellspacing="1"
			class="cmsTable">
			<form name="form1" method="post" >
			<tr align="center">
				<td>
				</td>
			</tr>
			<tr>
				<td class="cmsTitleTr" height="24" colspan="2">
					<font color="#FFFFFF">┈&gt; sql查询：</font>
				</td>
			</tr>
			<tr>
				<td height="24" align="center" nowrap="nowrap">
					<textarea name="sql" cols="80" rows="10" class="cmsOperTr" >${sql}</textarea>
					<br/>	<br/>
					<span class="btn_style07"><input type="button" value="搜索" class="search_style01"></span>
				</td>
			</tr>
		</table>

  
  <div class="box margin-bottom-none">
    <div class="box-header with-border">
      <div class="fr">
      <!-- 
        <button class="btn btn-block btn-success btn-outport"><i class="fa fa-fw fa-sign-out"></i> 导出学员信息</button>
         -->
      </div>
    </div>
    <div class="box-body">
		    <c:choose>
		    	<c:when test="${empty resultMap.resultList }">
		    			查无数据
		    	</c:when>
		    	<c:otherwise>
			      <table id="dtable" align="center" cellpadding="1" cellspacing="1"	class="cmsTable">
			      <thead>
			        	<th>序号</th>
				        <c:forEach items="${resultMap.columnList}" var="columnList" >
				     	   <th>${columnList}</th>     
				        </c:forEach>
			        </tr>
			      </thead>
			      <tbody>
			        	<c:forEach items="${resultMap.resultList}"  var="resultList"  varStatus="status">
			        		<c:if test="${status.index % 2 eq 0 }"><tr class="tr2"></c:if>
			      			<c:if test="${status.index%2 gt 0 }"><tr class="tr1"></c:if>
			        			<td>${status.index+1 }</td>
			        		  <c:forEach items="${resultMap.columnList}" var="columnList" varStatus="status">
			        		  		<c:set var="column" value="${columnList}"></c:set>
					          		<td>${resultList[column]}</td>
				       			</c:forEach>
			        		</tr>
			          	</c:forEach>
	           	</c:otherwise>
	    	</c:choose>
			      </tbody>
      			</table>
      			 <jsp:include page="/WEB-INF/jsp/common/pagination_queryVersion.jsp"/>
      </form>
    </div>
  </div>
</section>
</body>
<script type="text/javascript">
  $(document).ready(function(){
	  $(".search_style01").click(function(){
	    	$("input[name='pageCurrent']").val(1);
	    	 document.forms[0].submit();
	    });
    parent.setIframeHeight($(document.body).outerHeight());
  });  
</script>
</html>
