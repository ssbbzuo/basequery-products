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
     <form method="post" id="form">
<!-- 	    <div class="box-footer fr left120" style="border-top:0;"> -->
<!-- 	      <div><button type="button" class="btn btn-primary">搜索</button></div> -->
<!-- 	    </div> -->
    
<!--       <div class="form-horizontal oh slide_box"> -->
<!--         <div class="row reset-form-horizontal pad-t15"> -->
          
<!--        <div class="col-md-12	"> -->
<!--           <div class="col-md-12"> -->
<!--             <div class="form-group"> -->
<!--               <label class="control-label col-sm-3">账户</label> -->
<!--               <div class="col-sm-9">  -->
<!--               			<input type="hidden"  value="userInfo.atid"  name="conditions[0].fieldName"/>  -->
<!-- 		              	<input type="hidden"  value="EQUAL"  name="conditions[0].rangeType"/>  -->
<%-- 		                <input type="hidden" class="form-control " value="${queryCondition.conditions[0].rangeFrom}"  name="conditions[0].rangeFrom"> --%>
		                
<!-- 		              	<input type="hidden"  value="loginAccount"  name="conditions[1].fieldName"/>  -->
<!-- 		              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/>  -->
<%-- 		                <input type="text" class="form-control "  value="${queryCondition.conditions[1].rangeFrom}" name="conditions[1].rangeFrom"> --%>
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div>  -->
    </div> 
  
  <div id ="message"></div>
  
  <div class="box margin-bottom-none">
    <div class="box-header ">
      <div class="fr">
        <button type="button" class="btn   btn-success btn-outport" onclick="toCreateAccount()"><i class="fa fa-fw fa-sign-out"></i>新增账户</button>
      </div>
    </div>
    
    <div class="box-body">
      <table id="dtable" class="table table-bordered table-striped table-container">
      <thead>
        <tr>
        <th><input type="checkbox" class="select-all"></th>
        <th>账户</th>     
        <th>账户类型</th>
        <th>操作</th>
        </tr>
      </thead>
      <tbody>
        <c:choose>
        	<c:when test="${not empty resultMap.resultSet }">
	        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
			        <tr>
						<td><input type="checkbox"></td>
						<td>${resultSet.loginAccount }</td>
						<td>
                        <c:choose>
                        	<c:when test="${resultSet.accountType == 'ID' }"> 
                        		身份证
                        	</c:when>
                        	<c:when test="${resultSet.accountType == 'MOBILE' }">
                        		手机
                        	</c:when>
                        	<c:when test="${resultSet.accountType == 'EMAIL' }">
                        		邮箱
                        	</c:when>
                        	<c:when test="${resultSet.accountType == 'USERNAME' }">
                        		用户名
                        	</c:when>
                        	<c:otherwise>
                        		未知
                        	</c:otherwise>
                        </c:choose>
						</td>
						<td> <a onclick="setRole('${resultSet.atid }')">删除</a> </td>
			        </tr>
	          	</c:forEach>
          	</c:when>
          	<c:otherwise>
          			<td colspan="15"  align="center">暂无数据</td>
          	</c:otherwise>
           </c:choose>
      </tbody>
      </table>
    
      <jsp:include page="/WEB-INF/jsp/common/pagination.jsp"/>
     
    </form>
    </div>
</div>
  </div>
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />

</section>


   <div id="add" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="lblAddTitle" style="font-weight:bold">添加信息</span>
                </h4>
            </div>
            <form class="form-horizontal form-bordered form-row-strippe" id="ffAdd" action="/saveAccount" data-toggle="validator" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="row">
                    <input id="name" name="userInfo.atid" type="hidden" value="${queryCondition.conditions[0].rangeFrom}" class="form-control" placeholder="账户..." />
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-4">账户：</label>
                                <div class="col-md-8">
                                    <input id="name" name="loginAccount" type="text" class="form-control" placeholder="账户..." />
                                </div>
                            </div>
                        </div>
                       
                       <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-4">账户类别：</label>
                                <div class="col-md-8">
                                  	<select id="sex" name="accountType" type="text" class="form-control select2" placeholder="账户类别..." >
                                  		<option value ="ID">身份证</option>
                                  		<option value ="MOBILE">手机</option>
                                  		<option value ="EMAIL">邮箱</option>
                                  		<option value ="USERNAME">用户名</option>
                                  	</select>
                                </div>
                            </div>
                        </div>
                        
                        

                    </div>
                </div>
                <div class="modal-footer bg-info">
                    <input type="hidden" id="ID" name="ID" />
                    <button type="button" class="btn blue" onclick="createAccount()">确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>

         
</body>
<script>

	var successPrefix = '<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert"  aria-hidden="true">  &times; </button>   ';
	var errorPrefix = '<div class="alert alert-error alert-dismissable"> <button type="button" class="close" data-dismiss="alert"  aria-hidden="true">  &times; </button>   ';
	
	var suffix = '</div>';

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
    
    
    function setPass(id){
    }
    function createAccount(){
    	 $.post("<%=request.getContextPath() %>/saveAccount",  $("#ffAdd").serialize(),
	  			   function(data){
    		 console.info(data.successful && !data.RSBizCode);
			   	$("#add").modal("hide");
    		 	if(data.successful && !data.RSBizCode){
			   		a=setInterval(sumitQueryaccount,2000);
			   		$("#message").empty();
			  		$("#message").append(successPrefix +'新增账户成功！' +suffix);
		   		}else{
		   			$("#message").empty();
		   			if(!data.RSBizCode){
		   				("#message").append(errorPrefix +'新增账户失败！              '  +data.messages +suffix);
		   			}else  if( data.RSBizCode.code == 'AB0001'){
				  		$("#message").append(errorPrefix +'新增账户失败！              '  +data.RSBizCode.info +suffix);
		   			}else{
		   				$("#message").append(errorPrefix +'新增账户失败！              '  +data.RSBizCode.info +'! 该账户绑定人员：'+data.userInfo.name +suffix);
		   			}
			  		hiddenMessage();
		   		}
	  	}, "json");
    }
    function setRole(id){
    }
    function setDataPri(id){
    	window.location.href="<%=request.getContextPath() %>/setPri?id="+id; 
    }
    
    
   function toCreateAccount(){
	   $("#ffAdd")[0].reset();
	   $("#add").modal("show");
   }
   
   var a ;
   
   function sumitQueryaccount(){
	   if(a){
		   clearInterval(a);
	   }
	   $("#form").submit();
   }
   
   function hiddenMessage(){
	   a=setInterval(clear,3000);
   }
   
   function clear(){
	   $("#message").empty();
	   if(a){
		   clearInterval(a);
	   }
   }
   
 
    
    

</script>
</html>
