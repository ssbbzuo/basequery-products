//区域（省市区）组装
var localObj = window.location;
var contextPath = localObj.pathname.split("/")[1];
if(contextPath!="basequery-web")contextPath="";
var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
$(function(){
	  /**获取当前省市区值**/
	var provinceValue = $("input[name='provinceValue']").val();
	var cityValue = $("input[name='cityValue']").val();
	var districtValue = $("input[name='districtValue']").val();
	
	  /**获取省数据**/
	$.ajax({ url: basePath+"/area/getProvinces",  success: function(data){
       var proviceHtml = "<option value=''>全部</option>";
       for(i=0;i<data.count;i++){
    	   proviceHtml +="<option";
    	   if(provinceValue==data.resultSet[i].areaCode) proviceHtml +=" selected "//判断为当前值，显示为selected选中状态
    	   proviceHtml +=" value='"+data.resultSet[i].areaCode+"' >"+data.resultSet[i].areaName+"</option>"
       }
       $("input[value='province']").siblings("select").html(proviceHtml).change(function(){
      	   /**每一次变化都清空之前的市区**/
    	   $("input[value='city']").siblings("select").html("");
    	   $("input[value='district']").siblings("select").html("");

    	   if($(this).val()!=""){//判断是否有值，为空则是选中全部
    		   /**获取市数据**/
    		   $.ajax({ url: basePath+"/area/getByPCode?pCode="+$(this).val(),  success: function(cityData){
    			   var cityHtml = "<option value=''>全部</option>";
    			   for(i=0;i<cityData.count;i++){
    				   cityHtml +="<option";
    		    	   if(cityValue==cityData.resultSet[i].areaCode) cityHtml +=" selected "//判断为当前值，显示为selected选中状态
    				   cityHtml +=" value='"+cityData.resultSet[i].areaCode+"' >"+cityData.resultSet[i].areaName+"</option>"
    			   }
    			   $("input[value='city']").siblings("select").html(cityHtml).change(function(){
    				   /**每一次变化都清空之前的区**/
    				   $("input[value='district']").siblings("select").html("");
    				   
    				   if($(this).val()!=""){//判断是否有值，为空则是选中全部
    					   /**获取区数据**/
    					   $.ajax({ url: basePath+"/area/getByPCode?pCode="+$(this).val(),  success: function(districtData){
    						   var districtHtml = "<option value=''>全部</option>";
    						   for(i=0;i<districtData.count;i++){
    							   districtHtml +="<option";
    		    		    	   if(districtValue==districtData.resultSet[i].areaCode) districtHtml +=" selected "//判断为当前值，显示为selected选中状态
    							   districtHtml +=" value='"+districtData.resultSet[i].areaCode+"' >"+districtData.resultSet[i].areaName+"</option>"
    						   }
    						   $("input[value='district']").siblings("select").html(districtHtml);
    					   }});
    				   }
    			   });   
    		   }});
    	   }
       });    	  
    }});
	
	
	if(provinceValue!="") {
		 $.ajax({ url: basePath+"/area/getByPCode?pCode="+provinceValue,  success: function(cityData){
			   var cityHtml = "<option value=''>全部</option>";
			   for(i=0;i<cityData.count;i++){
				   cityHtml +="<option";
		    	   if(cityValue==cityData.resultSet[i].areaCode) cityHtml +=" selected "//判断为当前值，显示为selected选中状态
				   cityHtml +=" value='"+cityData.resultSet[i].areaCode+"' >"+cityData.resultSet[i].areaName+"</option>"
			   }
			   $("input[value='city']").siblings("select").html(cityHtml);
		  }});
	}
	if(cityValue!=""){
		 $.ajax({ url: basePath+"/area/getByPCode?pCode="+cityValue,  success: function(districtData){
			   var districtHtml = "<option value=''>全部</option>";
			   for(i=0;i<districtData.count;i++){
				   districtHtml +="<option";
		    	   if(districtValue==districtData.resultSet[i].areaCode) districtHtml +=" selected "//判断为当前值，显示为selected选中状态
				   districtHtml +=" value='"+districtData.resultSet[i].areaCode+"' >"+districtData.resultSet[i].areaName+"</option>"
			   }
			   $("input[value='district']").siblings("select").html(districtHtml);
		   }});
	}
})