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
<section class="content-header" style="margin:15px 0;">
      <h1>
        增量数据统计
        <small>说明：数据更新时间每日凌晨01:00更新前一天的数据</small>
      </h1>
    </section>

      <section class="content">
      <!-- =========================================================== -->

      <!-- Small boxes (Stat box) -->
      <div class="row">
      
      <c:choose>
      	<c:when test="${not empty resultMap.resultSet }">
        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box ${resultSet.incrementBgColor}">
            <div class="inner">
              <p>${resultSet.incrementTitle}</p>
              <h3>${resultSet.incrementNum}<span style="font-size: 14px;margin-left:10px;">条</span></h3>
            </div>
            <div class="icon">
              <i class="${resultSet.incrementIcon}"></i>
            </div>
            <a href="#" class="small-box-footer">
              <fmt:formatDate  value="${resultSet.incrementDate }"  type="both" pattern="yyyy-MM-dd " /> 更新 <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
        </div>
        </c:forEach>
        </c:when>
        <c:otherwise>
        	暂无数据
        </c:otherwise>
      </c:choose>
       
      </div>
      <!-- /.row -->
    </section>
</body>
</html>
