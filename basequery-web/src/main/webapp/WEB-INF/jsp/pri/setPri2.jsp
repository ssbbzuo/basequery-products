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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/plugins/zTree/css/zTreeStyle/metro.css">
<script
		src="<%=request.getContextPath()%>/static/plugins/zTree/js/jquery.ztree.all-3.5.min.js"></script>
</head>
<body class="inner-page-body">
<section class="content">
  <div class="box">
     <div class="box-body">
            <div class="form-group">
<!--               <label class="col-sm-1 control-label">授权类型</label> -->
              <div class="col-sm-3">
              	<input type="hidden"  value="rollStatus"  name="conditions[6].fieldName"/> 
              	<input type="hidden"  value="EQUAL"  name="conditions[6].rangeType"/> 
                  <select  id="priType" class="form-control" name="conditions[6].rangeFrom" onchange="changePriType()">
                  <option value="1" <c:if test="${queryCondition.conditions[6].rangeFrom == '1'}" >selected</c:if> >区域</option>
                  <option value="2" <c:if test="${queryCondition.conditions[6].rangeFrom == '2'}" >selected</c:if> >网院</option>
                  <option value="3" <c:if test="${queryCondition.conditions[6].rangeFrom == '3'}" >selected</c:if> >人员</option>
                  <option value="4" <c:if test="${queryCondition.conditions[6].rangeFrom == '4'}" >selected</c:if> >渠道</option>
                  <option value="5" <c:if test="${queryCondition.conditions[6].rangeFrom == '5'}" >selected</c:if> >学习中心</option>
                </select>
       	 	</div>
      	</div>
    </div> 
    </div> 


<div class="col-md-6"  style="height:400px">
    		 <div id="treeDemo" class="ztree" ></div>
    		 
   	 	</div>
   	 	<div class="col-md-4">
   	 			<input id ="uid" type="hidden" value="${resultMap.atid }">
    		 	用户编号：${resultMap.adminCode }<br/>
    		 	用户名称：${resultMap.name }
    		 	<br/>
    		 	所选权限：<br/>
    		 	<span id="pri"></span><br/>
    		 	所选权限id：<br/>
    		 	<span id="ids"></span><br/>
    		 	
    		 	增加权限：<br/>
    		 	<span id="add"></span><br/>
    		 	
    		 	移除权限：<br/>
    		 	<span id="remove"></span><br/>
    		 	<br/>
   	 	</div>

  
<!--   <div class="box margin-bottom-none" style="height:400px"> -->
<!--    <div class="box-body"  style="height:400px"> -->
<!--   	<div class="row"  style="height:400px"> -->
<!--     	<div class="col-md-6"  style="height:400px"> -->
<!--     		 <div id="treeDemo" class="ztree" ></div> -->
    		 
<!--    	 	</div> -->
<!--    	 	<div class="col-md-4"> -->
<%--    	 			<input type="hidden" value="${resultMap.atid }"> --%>
<%--     		 	用户编号：${resultMap.adminCode }<br/> --%>
<%--     		 	用户名称：${resultMap.name } --%>
<!--     		 	<br/> -->
<!--     		 	所选权限：<br/> -->
<!--     		 	<span id="pri"></span> -->
<!--     		 	<br/> -->
<!--    	 	</div> -->
<!--     </div> -->
<!--     </div> -->
<!--   </div> -->
<%-- <jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" /> --%>
</section>
</body>
<script>
	
	$(function(){
		$.fn.zTree.init($("#treeDemo"), setting);
	}); 
	
	


    function changePriType(){
    	
    	setting.async.otherParam.type=$("#priType").val();
    	$.fn.zTree.init($("#treeDemo"), setting);
    	$("#pri").empty();
    	$("#ids").empty();
    	
    }
    
    
    var setting = {
            view: {
                selectedMulti: false
            },
            check: {
                enable: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            edit: {
                enable: false
            },
            callback: {
            	onCheck: onCheck,
            	onAsyncSuccess: onAsyncSuccess
        	},
            
            async: {
				enable: true,
				url:"<%=request.getContextPath() %>/getPri",
				autoParam:["id"],
				otherParam:{"type":"1"}
			}
        };
    
    	
    function onAsyncSuccess(event, treeId, treeNode, msg) {
		var userId =  $("#uid").val();
		var type = $("#priType").val();
		if(treeNode){
			var id = treeNode.id;
			$.post("<%=request.getContextPath() %>/getMyPri", {"userId" :userId,"id":id, "type":type },
					   function(data){
							setMyPri(data); 
			}, "json");
		}else{
			$.post("<%=request.getContextPath() %>/getMyPri", {"userId" :userId,"type":type },
					   function(data){
							setMyPri(data); 
			}, "json");
		}
	}
    
    
    function setMyPri(data){
    	var zTree = $.fn.zTree.getZTreeObj("treeDemo");
    	var choosePri="";
    	if(data.length>0){
    		choosePri=data[0].name;
    		ids = data[0].id;
    		var node = zTree.getNodeByParam("id", data[0].id);
    		zTree.checkNode(node,true,true);
    	}
    	for(var i =1;i<data.length;i++){
    		var node = zTree.getNodeByParam("id", data[i].id);
    		zTree.checkNode(node,true,true);
    		choosePri  = choosePri +"," + data[i].name;
    	}
    	
    	
    	$("#pri").html(choosePri);
    	
    	
    }
    
    
        function onCheck(){
        	var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        	
        	var nodes = zTree.getCheckedNodes(true);
        	var choosePri="";
        	var ids ="";
        	if(nodes.length>0){
        		choosePri=nodes[0].name;
        		ids = nodes[0].id;
        	}
        	for(var i=1;i<nodes.length;i++){
        		choosePri  = choosePri +"," + nodes[i].name;
        		ids  = ids +"," + nodes[i].id;
        	}
        	$("#pri").html(choosePri);
        	$("#ids").html(ids);
        	
        	nodes = zTree.getChangeCheckedNodes();
			var addIds="";
			var removeIds="";
        	if(nodes.length>0){
        		if(nodes[0].checked)
        			addIds=nodes[0].id;
        		else
        			removeIds = nodes[0].id;
        	}
			for (var i=1, l=nodes.length; i<l; i++) {
				
				if(nodes[0].checked)
					addIds  = addIds +"," + nodes[i].id;
        		else
        			removeIds  = removeIds +"," + nodes[i].id;
				
			}
		
			
			clearCheckedOldNodes();
			
			
			var type  =  zTree.setting.async.otherParam.type;
			var uid =  $("#uid").val();
			$.post("<%=request.getContextPath() %>/savePri", {"uid" :uid,"addIds":addIds, "removeIds":removeIds,"type" :type },
			function(data){
				console.log(data.time); 
			}, "json");
			
        };
        
        
    	function clearCheckedOldNodes() {
    		var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getChangeCheckedNodes();
			for (var i=0, l=nodes.length; i<l; i++) {
				nodes[i].checkedOld = nodes[i].checked;
			}
		}
       
</script>
</html>
