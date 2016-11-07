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
	    <div class="box-footer fr left120" style="border-top:0;">
	      <div><button type="button" class="btn btn-primary">搜索</button></div>
	    </div>
    
      <div class="form-horizontal oh slide_box">
     	 	<div class="row reset-form-horizontal pad-t15">
	       <div class="col-md-12">
	          <div class="col-md-12">
	            <div class="form-group">
	              <label class="control-label col-sm-3">用户姓名</label>
	              <div class="col-sm-9">
	              	<input type="hidden"  value="name"  name="conditions[0].fieldName"/> 
	              	<input type="hidden"  value="INCLUDE"  name="conditions[0].rangeType"/> 
	                 <input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeFrom}"   name="conditions[0].rangeFrom">
	              </div>
	            </div>
	          </div>
	          
	          <div class="col-md-12">
	            <div class="form-group">
	              <label class="control-label col-sm-3">用户编码</label>
	              <div class="col-sm-9">
	              	<input type="hidden"  value="adminCode"  name="conditions[1].fieldName"/> 
	              	<input type="hidden"  value="INCLUDE"  name="conditions[1].rangeType"/> 
	                 <input type="text" class="form-control "  value="${queryCondition.conditions[1].rangeFrom}"   name="conditions[1].rangeFrom">
	              </div>
	            </div>
	          </div>
	        </div>
      </div>
    </div> 
    </div> 
  

	
     <div id ="message"></div>
	
 
	
	
 
	
  
  <div class="box margin-bottom-none">
    <div class="box-header ">
      <div class="fr">
        <button type="button" class="btn   btn-success btn-outport" onclick="createUser()"><i class="fa fa-fw fa-sign-out"></i>新增用户</button>
      </div>
    </div>
    <div class="box-body">
      <table id="dtable" class="table table-bordered table-striped table-container">
	      <thead>
	        <tr>
	        <th><input type="checkbox" class="select-all"></th>
	        <th>用户</th>     
	        <th>用户编码</th>
	        <th>手机号</th>
	        <th>邮箱</th>
	        <th>EE</th>
	        <th>办公室电话</th>
	        <th>身份证</th>
	        <th>出生日期</th>
	        <th>性别</th>
	        <th>单位</th>
	        <th>住址</th>
	        <th>操作</th>
	        </tr>
	      </thead>
	      <tbody>
	        <c:choose>
	        	<c:when test="${not empty resultMap.resultSet }">
		        	<c:forEach items="${resultMap.resultSet }"  var="resultSet">
				        <tr>
							<td><input type="checkbox"></td>
							<td>${resultSet.name }</td>
							<td>${resultSet.adminCode }</td>
							<td>${resultSet.mobile }</td>
							<td>${resultSet.email }</td>
							<td>${resultSet.ee }</td>
							<td>${resultSet.companyTele }</td>
							<td>${resultSet.idCard }</td>
							<td><fmt:formatDate  value="${resultSet.birthday }"  type="both" pattern="yyyy-MM-dd " /></td>
							<td>
								<c:choose>
									<c:when test="${resultSet.sex=='M' }">男</c:when>
									<c:when test="${resultSet.sex=='F' }">女</c:when>
									<c:when test="${resultSet.sex=='S' }">保密</c:when>
									<c:otherwise>未知</c:otherwise>
								</c:choose>
							 </td>
							<td>${resultSet.unitCode }</td>
							<td>${resultSet.address }</td>
							<td><a onclick="setPass('${resultSet.atid }')">设置密码</a> <a onclick="createAccount('${resultSet.atid }')">创建账号</a>  <a onclick="setRole('${resultSet.atid }')">选择角色</a> <a onclick="setDataPri('${resultSet.atid }')">数据授权</a></td>
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
            <form class="form-horizontal form-bordered form-row-strippe" id="ffAdd" action="/saveUser" data-toggle="validator" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">姓名：</label>
                                <div class="col-md-8">
                                    <input id="name" name="name" type="text" class="form-control" placeholder="姓名..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">用户编号：</label>
                                <div class="col-md-8">
                                    <input id="adminCode" name="adminCode" type="text" class="form-control" placeholder="用户编号..." />
                                </div>
                            </div>
                        </div>
                        <div class=col-md-6>
                            <div class="form-group">
                                <label class="control-label col-md-4">手机号：</label>
                                <div class="col-md-8">
                                  	<input id="mobile" name="mobile" type="text" class="form-control" placeholder="手机号..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">邮箱：</label>
                                <div class="col-md-8">
                                  	<input id="email" name="email" type="text" class="form-control" placeholder="邮箱..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">EE：</label>
                                <div class="col-md-8">
                                  	<input id="ee" name="ee" type="text" class="form-control" placeholder="EE..." />
                                </div>
                            </div>
                        </div>
                           <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">性别：</label>
                                <div class="col-md-8">
                                  	<select id="sex" name="sex" type="text" class="form-control select2" placeholder="父ID..." >
                                  		 <option value ="M">男</option>
                                  		  <option value ="F">女</option>
                                  		   <option value ="S">保密</option>
                                  	</select>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">身份证：</label>
                                <div class="col-md-8">
                                  	<input id="idCard" name="idCard" type="text" class="form-control" placeholder="身份证..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label col-md-4">出生日期：</label>
                                <div class="col-md-8">
                                  	<input type="text" class="form-control "  value="${queryCondition.conditions[0].rangeFrom}" placeholder="出生日期..." id="birthday" name="birthday">
                                </div>
                            </div>
                        </div>
                     
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">办公室电话：</label>
                                <div class="col-md-10">
                                  	<input id="companyTele" name="companyTele" type="text" class="form-control" placeholder="办公室电话..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">单位：</label>
                                <div class="col-md-10">
                                  	<input id="unitCode" name="unitCode" type="text" class="form-control" placeholder="单位..." />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">住址：</label>
                                <div class="col-md-10">
                                  	<textarea id="address" name="address" class="form-control" placeholder="住址..."></textarea>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer bg-info">
                    <button type="button" class="btn blue" onclick="addUser()">确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>




 <div id="init" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="lblAddTitle" style="font-weight:bold">初始化密码</span>
                </h4>
            </div>
            <form class="form-horizontal form-bordered form-row-strippe" id="initForm" action="initAdminUserLoginPassword" data-toggle="validator" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="row">
                    <input id="atid" name="adminUser.atid" type="hidden" class="form-control"  />
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-4">密码：</label>
                                <div class="col-md-8">
                                    <input id="name" name="password" type="password" class="form-control"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-info">
                    <button type="button" class="btn blue" onclick="initAdminUserLoginPassword()">确定</button>
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
    
    
 	function setPass (id){
 		$("#initForm")[0].reset();
 		$("#atid").val(id);
 		 $("#init").modal("show");
    }
    
    
    function initAdminUserLoginPassword(){
    	 $.post("<%=request.getContextPath() %>/initAdminUserLoginPassword",  $("#initForm").serialize(),
  			   function(data){
		  		   $("#init").modal("hide");
		  		   if(data.successful){
		  			 	$("#message").empty();
				  		$("#message").append(successPrefix +'初始化密码成功！' +suffix);
				  		hiddenMessage();
		  		   }else{
		  			    $("#message").empty();
				  		$("#message").append(errorPrefix +'初始化密码失败！              '  +data.messages +suffix);
				  		hiddenMessage();
		  		   }
		  	}, "json");
		    	
    }
    function createAccount(id){
    	//window.location.href="<%=request.getContextPath() %>/setPri?id="+id; 
    	
    	
    	//
    	window.location.href="<%=request.getContextPath() %>/accountList?conditions[0].fieldName=userInfo.atid&conditions[0].rangeType=EQUAL&conditions[0].rangeFrom="+id; 
    }
    function setRole(id){
    }
    function setDataPri(id){
    	window.location.href="<%=request.getContextPath() %>/setPri?id="+id; 
    }
    
    
   function createUser(){
	   $("#ffAdd")[0].reset();
	   $("#add").modal("show");
   }
   
   function addUser(){
	   $.post("<%=request.getContextPath() %>/saveUser",  $("#ffAdd").serialize(),
			   function(data){
		   		if(data.successful){
			   		$("#add").modal("hide");
			   		a=setInterval(sumitQueryuser,2000);
			   		$("#message").empty();
			  		$("#message").append(successPrefix +'新增用户成功！' +suffix);
		   		}else{
		   			$("#message").empty();
			  		$("#message").append(errorPrefix +'新增用户失败！              '  +data.messages +suffix);
			  		hiddenMessage();
		   		}
		   		
		   	 
	}, "json");
  }
   var a ;
   function hiddenMessage(){
	   a=setInterval(clear,3000);
   }
   
   function clear(){
	   $("#message").empty();
	   if(a){
		   clearInterval(a);
	   }
   }
   
   function sumitQueryuser(){
	   if(a){
		   clearInterval(a);
	   }
	   $("#form").submit();
   }
   
   
   $("#birthday").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyy-mm-dd',
       onSelect: function(dateText,inst){  
           var time=dateText.split("-");  
           var year = time[0];  
           var month = time[1];  
           var day = time[2];  
           $("#birthday").datepicker(  
               'option', 'minDate', new Date(year, month - 1, day)  
           );  
       },defaultDate:new Date()
   });  
    
    

</script>
</html>
