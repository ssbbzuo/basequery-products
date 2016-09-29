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
<link rel="stylesheet" href=" <%=request.getContextPath() %>/static/plugins/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath() %>/static/plugins/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/plugins/zTree/js/jquery.ztree.core.min.js"></script>
<script type="text/javascript">
   var zTreeObj;
   // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
   var setting = {
		   data: {
				simpleData: {
					enable: true,
					idKey: "id",
					pIdKey: "pId",
					rootPId: 0
				}
			},
	   	callback: {
			onClick: getNode,
		}
   };
   // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
   var zNodes = [
       { "id":1, "name":"test1", "meunId":"test eName1","pId":0},
       { "id":2, "name":"test2", "meunId":"test eName2","pId":1},
       { "id":3, "name":"test3", "meunId":"test eName3","pId":1}
   ];   
   $(document).ready(function(){
      zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
   });
   
 function getNode (event, treeId, treeNode){
	   alert(treeNode.tId + ", " + treeNode.name + ", " + treeNode.meunId);
}
</script>
</head>
<body class="inner-page-body">
<div>
   <ul id="treeDemo" class="ztree"></ul>
</div>
</body>
</html>
