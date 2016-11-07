<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<jsp:include page="/WEB-INF/jsp/common/jslibs_report.jsp" />
</head>
<body>
<div class="content main">
	<div class="box" >
		<div class="clearfix time-search">
			<div class="col-md-4 grid_box1">		
				<input id="create_dt_from" type="text" class="form-control"  placeholder="创建时间从">	
			</div>				
			<div class="col-md-4 grid_box1">				
					<input id="create_dt_to" type="text" class="form-control"  placeholder="创建时间至">						
			</div>
			<div class="col-md-3">
				<button id="search" type="button" class="btn btn-primary"><i class="fa fa-search"></i>  搜索</button>
				<button id="reset" type="button" class="btn btn-default"><i class="fa fa-refresh"></i>  重置</button>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<div class="panel panel-default" >
				<div class="panel-heading"><i class="fa fa-line-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main01" ></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading"><i class="fa fa-pie-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main02"></div>
					</div>
				</div>
			</div>
		</div>		
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading"><i class="fa fa-pie-chart"></i></div>
				<div class="panel-body">
					<div class="canvas-wrapper">
						<div class="chart" id="main03"></div>
					</div>
				</div>
			</div>
		</div>			
	</div><!--/.row-->	

	

	<div class="box margin-bottom-none">
		<div class="clearfix">
			<div id="container-Will">
				<!--Horizontal Tab-->
				<div id="Will">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-map"></i>区域</li>
						<li><i class="fa fa-institution"></i>客户性质</li>
						<li><i class="fa fa-users"></i>人数规模</li>					
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-WillCity">
							<!-- 加载表格 -->
							<div id="pageTool-WillCity"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-WillCP">
							<!-- 加载表格 -->		
							<div id="pageTool-WillCP"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-WillPS">
							<!-- 加载表格 -->
							<div id="pageTool-WillPS"> <!-- 加载分页控件 --> </div>						
						</div>					
					</div>
				</div>
				<div id="nested-tabInfo-Will" class="nested-tabInfo">
					当前选择: <span class="tabName">市场人员</span>			
				</div>
			</div><!-- container-Will -->
			
			<div id="container-Agree">
				<!--Horizontal Tab-->
				<div id="Agree">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-map"></i>区域</li>
						<li><i class="fa fa-institution"></i>客户性质</li>
						<li><i class="fa fa-users"></i>人数规模</li>	
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-AgreeCity">
							<!-- 加载表格 -->		
							<div id="pageTool-AgreeCity"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-AgreeCP">
							<!-- 加载表格 -->
							<div id="pageTool-AgreeCP"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-AgreePS">
							<!-- 加载表格 -->
							<div id="pageTool-AgreePS"> <!-- 加载分页控件 --> </div>						
						</div>												
					</div>
				</div>
				<div id="nested-tabInfo-Agree" class="nested-tabInfo">
					当前选择: <span class="tabName">市场人员</span>			
				</div>
			</div><!-- containerAgree -->	
			
			<div id="container-Affirm">
				<!--Horizontal Tab-->
				<div id="Affirm">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-street-view"></i>市场人员</li>
						<li><i class="fa fa-map"></i>区域</li>
						<li><i class="fa fa-institution"></i>客户性质</li>
						<li><i class="fa fa-users"></i>人数规模</li>	
						<li><i class="fa fa-sitemap"></i>团队</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-AffirmAccount">
							<!-- 加载表格 -->
							<div id="pageTool-AffirmAccount"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-AffirmCity">
							<!-- 加载表格 -->		
							<div id="pageTool-AffirmCity"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-AffirmCP">
							<!-- 加载表格 -->
							<div id="pageTool-AffirmCP"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-AffirmPS">
							<!-- 加载表格 -->
							<div id="pageTool-AffirmPS"> <!-- 加载分页控件 --> </div>						
						</div>			
						<div id="jsontotable-AffirmStructures">
							<!-- 加载表格 -->
							<div id="pageTool-AffirmStructures"> <!-- 加载分页控件 --> </div>						
						</div>										
					</div>
				</div>
				<div id="nested-tabInfo-Affirm" class="nested-tabInfo">
					当前选择: <span class="tabName">市场人员</span>			
				</div>
			</div><!-- containerAffirm-->	
			
			<div id="container-Execute">
				<!--Horizontal Tab-->
				<div id="Execute">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-street-view"></i>市场人员</li>
						<li><i class="fa fa-map"></i>区域</li>
						<li><i class="fa fa-institution"></i>客户性质</li>
						<li><i class="fa fa-users"></i>人数规模</li>	
						<li><i class="fa fa-sitemap"></i>团队</li>						
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-ExecuteAccount">
							<!-- 加载表格 -->
							<div id="pageTool-ExecuteAccount"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-ExecuteCity">
							<!-- 加载表格 -->		
							<div id="pageTool-ExecuteCity"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-ExecuteCP">
							<!-- 加载表格 -->
							<div id="pageTool-ExecuteCP"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-ExecutePS">
							<!-- 加载表格 -->
							<div id="pageTool-ExecutePS"> <!-- 加载分页控件 --> </div>						
						</div>	
						<div id="jsontotable-ExecuteStructures">
							<!-- 加载表格 -->
							<div id="pageTool-ExecuteStructures"> <!-- 加载分页控件 --> </div>						
						</div>												
					</div>
				</div>
				<div id="nested-tabInfo-Execute" class="nested-tabInfo">
					当前选择: <span class="tabName">市场人员</span>			
				</div>
			</div><!-- containerExecute -->		
			
			<div id="container-Produce">
				<!--Horizontal Tab-->
				<div id="Produce">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fa fa-street-view"></i>市场人员</li>
						<li><i class="fa fa-map"></i>区域</li>
						<li><i class="fa fa-institution"></i>客户性质</li>
						<li><i class="fa fa-users"></i>人数规模</li>	
						<li><i class="fa fa-sitemap"></i>团队</li>					
					</ul>
					<div class="resp-tabs-container hor_1">
						<div id="jsontotable-ProduceAccount">
							<!-- 加载表格 -->
							<div id="pageTool-ProduceAccount"> <!-- 加载分页控件 --> </div>
						</div>	
						
						<div id="jsontotable-ProduceCity">
							<!-- 加载表格 -->		
							<div id="pageTool-ProduceCity"> <!-- 加载分页控件 --> </div>					
						</div>
						<div id="jsontotable-ProduceCP">
							<!-- 加载表格 -->
							<div id="pageTool-ProduceCP"> <!-- 加载分页控件 --> </div>						
						</div>
						<div id="jsontotable-ProducePS">
							<!-- 加载表格 -->
							<div id="pageTool-ProducePS"> <!-- 加载分页控件 --> </div>						
						</div>	
						<div id="jsontotable-ProduceStructures">
							<!-- 加载表格 -->
							<div id="pageTool-ProduceStructures"> <!-- 加载分页控件 --> </div>						
						</div>												
					</div>
				</div>
				<div id="nested-tabInfo-Produce" class="nested-tabInfo">
					当前选择: <span class="tabName">市场人员性质</span>			
				</div>
			</div><!-- containerExecute -->									
		</div>
	
	</div><!-- main -->	
	
</div>
<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />

<script type="text/javascript">	

	var initFunnelData = ['WillCity','WillCP','WillPS',
	           'AgreeCity','AgreeCP','AgreePS',
	           'AffirmAccount','AffirmCity','AffirmCP','AffirmPS','AffirmStructures',
	           'ExecuteAccount','ExecuteCity','ExecuteCP','ExecutePS','ExecuteStructures',
	           'ProduceAccount','ProduceCity','ProduceCP','ProducePS','ProduceStructures'];

	//清空按钮
	$("#reset").click(function(){
		document.getElementById("create_dt_to").value="";
		document.getElementById("create_dt_from").value="";
	});
	
	//时间控件
   $("#create_dt_from").datepicker({language: 'zh-CN', autoclose: true, todayHighlight: true,format:'yyyymmdd'});  
   $("#create_dt_to").datepicker({language: 'zh-CN',autoclose: true, todayHighlight: true,format:'yyyymmdd',
       onSelect: function(dateText,inst){  
           var time=dateText.split("-");  
           var year = time[0];  
           var month = time[1];  
           var day = time[2];  
           $("#create_dt_to").datepicker(  
               'option', 'minDate', new Date(year, month - 1, day)  
           );  
       }  
   });  		

	var name = "";
	
	var worldMapContainer01 = document.getElementById('main01');
	var worldMapContainer02 = document.getElementById('main02');
	var worldMapContainer03 = document.getElementById('main03');
	
	//用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
	var resizeWorldMapContainer = function () {		    
	    if(document.body.clientWidth*0.2 >= 250){
		    worldMapContainer01.style.height = document.body.clientWidth*0.2+'px';
		    worldMapContainer02.style.height = document.body.clientWidth*0.2+'px';
		    worldMapContainer03.style.height = document.body.clientWidth*0.2+'px';
	    }else{
		    worldMapContainer01.style.height ='250px';
		    worldMapContainer02.style.height ='250px';
		    worldMapContainer03.style.height ='250px';
	    }
	};
	
	//设置容器高宽
	resizeWorldMapContainer();	
	
	var myChart01 = echarts.init(worldMapContainer01,'infographic');
	var myChart02 = echarts.init(worldMapContainer02,'infographic');
	var myChart03 = echarts.init(worldMapContainer03,'infographic');
	
	
	//加载数据
	function pageData(){
		for(var i = 0 ; i < initFunnelData.length ; i ++){
			eval('setPara_'+initFunnelData[i]+' ="'+initFunnelData[i]+'";'+
				'buildFunc(setPara_'+initFunnelData[i]+');');
		}			
	};
	//重新初始化
	function initPage(){
		for(var i = 0 ; i < initFunnelData.length ; i ++){

			eval('pageSize_'+initFunnelData[i]+' = 10;');
			eval('currentCount_'+initFunnelData[i]+' = 0;');
		}	
	}	
	

	$("#search").click(function(){			
		pageData();	
		initPage();
		/*===========================客户漏斗主表===========================*/	
		setPara_Company = "Company";
		buildFunc(setPara_Company);
	
		//========================================================================			
		
		setTimeout(function() {
			window.onresize = function() {
				resizeWorldMapContainer();
				myChart01.resize();
				myChart02.resize();
				myChart03.resize();
			}
		}, 200);

		myChart01.on('click',function(params) {
			var htmlstr = "";
			for ( var key in params) {
				if (key == "data") {
					htmlstr += "<tr><td>"
							+ params[key]["name"]
							+ "</td>"
							+ "<td>"
							+ params[key]["value"]
							+ "</td></tr>";
					name = params[key]["name"];
				}
			}
			buildFunc("Company");
			switch(name){
				case '总客户':
					$("#container-Will").show();
					$("#container-Agree").hide();
					$("#container-Affirm").hide();
					$("#container-Execute").hide();
					$("#container-Produce").hide();
					break;
				case '已分配':
					$("#container-Will").hide();
					$("#container-Agree").show();
					$("#container-Affirm").hide();
					$("#container-Execute").hide();
					$("#container-Produce").hide();
					break;			
				case '覆盖跟踪':
					$("#container-Will").hide();
					$("#container-Agree").hide();
					$("#container-Affirm").show();
					$("#container-Execute").hide();
					$("#container-Produce").hide();
					break;			
				case '已激活':
					$("#container-Will").hide();
					$("#container-Agree").hide();
					$("#container-Affirm").hide();
					$("#container-Execute").show();
					$("#container-Produce").hide();
					break;			
				case '产单':
					$("#container-Will").hide();
					$("#container-Agree").hide();
					$("#container-Affirm").hide();
					$("#container-Execute").hide();
					$("#container-Produce").show();
					break;						
				default:
					$("#container-Will").show();
					$("#container-Agree").hide();
					$("#container-Affirm").hide();
					$("#container-Execute").hide();
					$("#container-Produce").hide();			
			}
		
		});
	});// #search
	
	$(document).ready(function() {
		$("#search").triggerHandler("click");
		
		$("#container-Agree").hide();
		$("#container-Affirm").hide();
		$("#container-Execute").hide();
		$("#container-Produce").hide();		
		
        //Horizontal Tab
        $('#Will').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Will');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });		
        $('#Agree').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Agree');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	
        $('#Affirm').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Affirm');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	
        $('#Execute').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Execute');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	      
        
        $('#Produce').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo-Produce');
                var $name = $('span', $info) ;
                $name.text($tab.text());
                $info.show();
            }
        });	          
	});
	/*=========================================公用部分=========================================*/
	var totalCount = 0;//总条数	
	
	function fillData(setStr,str,currentCount,pageSize,total){

		//删除表格数据
		$("div#jsontotable-str-"+setStr).remove();
	
		//添加表格div
		$("div#jsontotable-"+setStr).append('<div id="jsontotable-str-'+setStr+'"></div>');
		//生成表格数据
		$.jsontotable(str, {
			id: "#jsontotable-str-"+setStr,
			className: "table table-bordered table-striped table-container"
		});						
		$("div#pageToolbar-"+setStr).remove();
		//添加表格div
		$("div#jsontotable-"+setStr).append('<div id="pageToolbar-'+setStr+'"></div>');
		
		//加载分页工具
		$('#pageToolbar-'+setStr).Paging({pagesize:eval("pageSize_" + setStr),current:((eval("currentCount_" + setStr)/eval("pageSize_" + setStr))+1),count:total,toolbar:true,
			callback:function(page,size,count){
					console.log(arguments);		
					eval("currentCount_" + setStr + "=" +  ((page-1)*size)); 
					eval("pageSize_" + setStr + "=" +  size);
					pageData();	
				}	
		});
	};	

	//json传送数据
	function buildFunc(setPara){
		eval('function ' +setPara + '(){'+
				'var jsonDate = {'+
				'"CREATE_DT_FROM" : $("#create_dt_from").val(),'+
				'"CREATE_DT_TO" : $("#create_dt_to").val(),'+
				'"currentCount" : eval("currentCount_'+ setPara + '"),'+
				'"pageSize" : eval("pageSize_'	+ setPara + '")};'+		
				'$.ajax({'+
					'url : "<%=request.getContextPath()%>/ThemeFunnelCompany'+setPara+'",'+			
					'type : "post",'+
					'contentType:"application/json;charset=UTF-8",'+
					'data : JSON.stringify(jsonDate),'+
					'success : function(msg) {'+
						'console.log(msg);'+
						'eval("fillTable_'+ setPara +' (msg)");'+			
					'}});};'	
		);
		eval(setPara+"();");
	};
	
	
	/*=========================================1.总客户(WILL)=========================================*/
	/*-----------------------------------------性质-----------------------------------------*/	
	var setPara_WillCP = ""; 	
	var pageSize_WillCP = 10;//每页行数 
	var currentCount_WillCP = 0;//当前条数 	
	
	//性质 
	function fillTable_WillCP(msg) {
		var str = '[{"Title1": "客户性质", "Title2": "新增客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CUSTOMER_PROP+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_WillCP,str,eval("currentCount_" + setPara_WillCP),eval("pageSize_" + setPara_WillCP),totalCount);		
	};	
	/*-----------------------------------------人数规模-----------------------------------------*/	
	var setPara_WillPS = ""; 	
	var pageSize_WillPS = 10;//每页行数 
	var currentCount_WillPS = 0;//当前条数 	
	
	//人数规模 
	function fillTable_WillPS(msg) {
		var str = '[{"Title1": "人数规模", "Title2": "新增客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_PERSONS_SCALE+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_WillPS,str,eval("currentCount_" + setPara_WillPS),eval("pageSize_" + setPara_WillPS),totalCount);		
	};		
	/*-----------------------------------------区域-----------------------------------------*/	
	var setPara_WillCity = ""; 	
	var pageSize_WillCity = 10;//每页行数 
	var currentCount_WillCity = 0;//当前条数 	
	
	//区域
	function fillTable_WillCity(msg) {
		var str = '[{"Title1": "区域", "Title2": "新增客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CITY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_WillCity,str,eval("currentCount_" + setPara_WillCity),eval("pageSize_" + setPara_WillCity),totalCount);		
	};			
		
	
	/*=========================================2.已分配客户(AGREE)=========================================*/
	/*-----------------------------------------性质-----------------------------------------*/	
	var setPara_AgreeCP = ""; 	
	var pageSize_AgreeCP = 10;//每页行数 
	var currentCount_AgreeCP = 0;//当前条数 	
	
	//性质 
	function fillTable_AgreeCP(msg) {
		var str = '[{"Title1": "客户性质", "Title2": "新增客户数", "Title3": "分配客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CUSTOMER_PROP+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+	
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AgreeCP,str,eval("currentCount_" + setPara_AgreeCP),eval("pageSize_" + setPara_AgreeCP),totalCount);		
	};		
	/*-----------------------------------------人数规模-----------------------------------------*/	
	var setPara_AgreePS = ""; 	
	var pageSize_AgreePS = 10;//每页行数 
	var currentCount_AgreePS = 0;//当前条数 	
	
	//人数规模 
	function fillTable_AgreePS(msg) {
		var str = '[{"Title1": "人数规模", "Title2": "新增客户数", "Title3": "分配客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_PERSONS_SCALE+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+				
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AgreePS,str,eval("currentCount_" + setPara_AgreePS),eval("pageSize_" + setPara_AgreePS),totalCount);		
	};	
	/*-----------------------------------------区域-----------------------------------------*/	
	var setPara_AgreeCity = ""; 	
	var pageSize_AgreeCity = 10;//每页行数 
	var currentCount_AgreeCity = 0;//当前条数 	
	
	//区域
	function fillTable_AgreeCity(msg) {
		var str = '[{"Title1": "区域", "Title2": "新增客户数", "Title3": "分配客户数"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CITY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].WILL_CUSTOMER_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+					
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AgreeCity,str,eval("currentCount_" + setPara_AgreeCity),eval("pageSize_" + setPara_AgreeCity),totalCount);		
	};		
	
	/*=========================================3.覆盖客户(AFFIRM)=========================================*/
	/*-----------------------------------------性质-----------------------------------------*/	
	var setPara_AffirmCP = ""; 	
	var pageSize_AffirmCP = 10;//每页行数 
	var currentCount_AffirmCP = 0;//当前条数 	
	
	//性质 
	function fillTable_AffirmCP(msg) {
		var str = '[{"Title1": "客户性质", "Title2": "分配客户数", "Title3": "覆盖客户数", "Title4": "跟踪次数", "Title5": "跟踪频次", "Title6": "跟进率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CUSTOMER_PROP+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column4":"'+msg[key].test.resultSet[o].AGREE_FLLOW_COUNT+'",'+
				'"Column5":"'+msg[key].test.resultSet[o].FLLOW_FREQUENCY+'",'+					
				'"Column6":"'+msg[key].test.resultSet[o].AFFIRM_PER+				
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AffirmCP,str,eval("currentCount_" + setPara_AffirmCP),eval("pageSize_" + setPara_AffirmCP),totalCount);		
	};		
	/*-----------------------------------------人数规模-----------------------------------------*/	
	var setPara_AffirmPS = ""; 	
	var pageSize_AffirmPS = 10;//每页行数 
	var currentCount_AffirmPS = 0;//当前条数 	
	
	//人数规模
	function fillTable_AffirmPS(msg) {
		var str = '[{"Title1": "人数规模", "Title2": "分配客户数", "Title3": "覆盖客户数", "Title4": "跟踪次数", "Title5": "跟踪频次", "Title6": "跟进率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_PERSONS_SCALE+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].AGREE_FLLOW_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].FLLOW_FREQUENCY+'",'+					
					'"Column6":"'+msg[key].test.resultSet[o].AFFIRM_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AffirmPS,str,eval("currentCount_" + setPara_AffirmPS),eval("pageSize_" + setPara_AffirmPS),totalCount);		
	};		
	/*-----------------------------------------区域-----------------------------------------*/	
	var setPara_AffirmCity = ""; 	
	var pageSize_AffirmCity = 10;//每页行数 
	var currentCount_AffirmCity = 0;//当前条数 	
	
	//区域
	function fillTable_AffirmCity(msg) {
		var str = '[{"Title1": "区域", "Title2": "分配客户数", "Title3": "覆盖客户数", "Title4": "跟踪次数", "Title5": "跟踪频次", "Title6": "跟进率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CITY+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column4":"'+msg[key].test.resultSet[o].AGREE_FLLOW_COUNT+'",'+
				'"Column5":"'+msg[key].test.resultSet[o].FLLOW_FREQUENCY+'",'+					
				'"Column6":"'+msg[key].test.resultSet[o].AFFIRM_PER+				
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AffirmCity,str,eval("currentCount_" + setPara_AffirmCity),eval("pageSize_" + setPara_AffirmCity),totalCount);		
	};	
	/*-----------------------------------------市场人员-----------------------------------------*/	
	var setPara_AffirmAccount = ""; 	
	var pageSize_AffirmAccount = 10;//每页行数 
	var currentCount_AffirmAccount = 0;//当前条数 	
	
	//市场人员
	function fillTable_AffirmAccount(msg) {
		var str = '[{"Title1": "市场人员", "Title2": "分配客户数", "Title3": "覆盖客户数", "Title4": "跟踪次数", "Title5": "跟踪频次", "Title6": "跟进率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_ADMIN_LOGIN_ACCOUNT+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column4":"'+msg[key].test.resultSet[o].AGREE_FLLOW_COUNT+'",'+
				'"Column5":"'+msg[key].test.resultSet[o].FLLOW_FREQUENCY+'",'+					
				'"Column6":"'+msg[key].test.resultSet[o].AFFIRM_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AffirmAccount,str,eval("currentCount_" + setPara_AffirmAccount),eval("pageSize_" + setPara_AffirmAccount),totalCount);		
	};		
	/*-----------------------------------------团队-----------------------------------------*/	
	var setPara_AffirmStructures = ""; 	
	var pageSize_AffirmStructures = 10;//每页行数 
	var currentCount_AffirmStructures = 0;//当前条数 	
	
	//团队
	function fillTable_AffirmStructures(msg) {
		var str = '[{"Title1": "团队", "Title2": "分配客户数", "Title3": "覆盖客户数", "Title4": "跟踪次数", "Title5": "跟踪频次", "Title6": "跟进率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_STRUCTURE_NAME+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AGREE_CUSTOMER_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column4":"'+msg[key].test.resultSet[o].AGREE_FLLOW_COUNT+'",'+
				'"Column5":"'+msg[key].test.resultSet[o].FLLOW_FREQUENCY+'",'+					
				'"Column6":"'+msg[key].test.resultSet[o].AFFIRM_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_AffirmStructures,str,eval("currentCount_" + setPara_AffirmStructures),eval("pageSize_" + setPara_AffirmStructures),totalCount);		
	};		
	
	/*=========================================4.已激活客户(EXECUTE)=========================================*/
	/*-----------------------------------------性质-----------------------------------------*/	
	var setPara_ExecuteCP = ""; 	
	var pageSize_ExecuteCP = 10;//每页行数 
	var currentCount_ExecuteCP = 0;//当前条数 	
	
	//性质 
	function fillTable_ExecuteCP(msg) {
		var str = '[{"Title1": "客户性质", "Title2": "覆盖客户数", "Title3": "激活客户数", "Title4": "激活转化率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CUSTOMER_PROP+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+				
				'"Column4":"'+msg[key].test.resultSet[o].EXECUTE_PER+				
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ExecuteCP,str,eval("currentCount_" + setPara_ExecuteCP),eval("pageSize_" + setPara_ExecuteCP),totalCount);		
	};		
	/*-----------------------------------------人数规模-----------------------------------------*/	
	var setPara_ExecutePS = ""; 	
	var pageSize_ExecutePS = 10;//每页行数 
	var currentCount_ExecutePS = 0;//当前条数 	
	
	//人数规模 
	function fillTable_ExecutePS(msg) {
		var str = '[{"Title1": "人数规模", "Title2": "覆盖客户数", "Title3": "激活客户数", "Title4": "激活转化率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_PERSONS_SCALE+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+				
				'"Column4":"'+msg[key].test.resultSet[o].EXECUTE_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ExecutePS,str,eval("currentCount_" + setPara_ExecutePS),eval("pageSize_" + setPara_ExecutePS),totalCount);		
	};	
	/*-----------------------------------------区域-----------------------------------------*/	
	var setPara_ExecuteCity = ""; 	
	var pageSize_ExecuteCity = 10;//每页行数 
	var currentCount_ExecuteCity = 0;//当前条数 	
	
	//区域 
	function fillTable_ExecuteCity(msg) {
		var str = '[{"Title1": "区域", "Title2": "覆盖客户数", "Title3": "激活客户数", "Title4": "激活转化率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CITY+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+				
				'"Column4":"'+msg[key].test.resultSet[o].EXECUTE_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ExecuteCity,str,eval("currentCount_" + setPara_ExecuteCity),eval("pageSize_" + setPara_ExecuteCity),totalCount);		
	};	
	/*-----------------------------------------市场人员-----------------------------------------*/	
	var setPara_ExecuteAccount = ""; 	
	var pageSize_ExecuteAccount = 10;//每页行数 
	var currentCount_ExecuteAccount = 0;//当前条数 	
	
	//市场人员
	function fillTable_ExecuteAccount(msg) {
		var str = '[{"Title1": "市场人员", "Title2": "覆盖客户数", "Title3": "激活客户数", "Title4": "激活转化率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_ADMIN_LOGIN_ACCOUNT+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+				
				'"Column4":"'+msg[key].test.resultSet[o].EXECUTE_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ExecuteAccount,str,eval("currentCount_" + setPara_ExecuteAccount),eval("pageSize_" + setPara_ExecuteAccount),totalCount);		
	};		
	/*-----------------------------------------团队-----------------------------------------*/	
	var setPara_ExecuteStructures = ""; 	
	var pageSize_ExecuteStructures = 10;//每页行数 
	var currentCount_ExecuteStructures = 0;//当前条数 	
	
	//团队
	function fillTable_ExecuteStructures(msg) {
		var str = '[{"Title1": "团队", "Title2": "覆盖客户数", "Title3": "激活客户数", "Title4": "激活转化率"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_STRUCTURE_NAME+'",'+
				'"Column2":"'+msg[key].test.resultSet[o].AFFIRM_COUNT+'",'+
				'"Column3":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+				
				'"Column4":"'+msg[key].test.resultSet[o].EXECUTE_PER+			
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ExecuteStructures,str,eval("currentCount_" + setPara_ExecuteStructures),eval("pageSize_" + setPara_ExecuteStructures),totalCount);		
	};	
	/*=========================================5.产单客户(PRODUCE)=========================================*/
	/*-----------------------------------------性质-----------------------------------------*/	
	var setPara_ProduceCP = ""; 	
	var pageSize_ProduceCP = 10;//每页行数 
	var currentCount_ProduceCP = 0;//当前条数 	
	
	//性质 
	function fillTable_ProduceCP(msg) {
		var str = '[{"Title1": "客户性质", "Title2": "激活客户数", "Title3": "产单客户数", "Title4": "产单数", "Title5": "产单率", "Title6": "产单总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CUSTOMER_PROP+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].PRODUCE_CUSTOMER_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_COUNT+	'",'+
					'"Column5":"'+msg[key].test.resultSet[o].PRODUCE_PER+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_PAID_AMT+						
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ProduceCP,str,eval("currentCount_" + setPara_ProduceCP),eval("pageSize_" + setPara_ProduceCP),totalCount);		
	};
	/*-----------------------------------------人数规模-----------------------------------------*/	
	var setPara_ProducePS = ""; 	
	var pageSize_ProducePS = 10;//每页行数 
	var currentCount_ProducePS = 0;//当前条数 	
	
	//人数规模 
	function fillTable_ProducePS(msg) {
		var str = '[{"Title1": "人数规模", "Title2": "激活客户数", "Title3": "产单客户数", "Title4": "产单数", "Title5": "产单率", "Title6": "产单总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_PERSONS_SCALE+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].PRODUCE_CUSTOMER_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_COUNT+	'",'+
					'"Column5":"'+msg[key].test.resultSet[o].PRODUCE_PER+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_PAID_AMT+						
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ProducePS,str,eval("currentCount_" + setPara_ProducePS),eval("pageSize_" + setPara_ProducePS),totalCount);		
	};
	/*-----------------------------------------区域-----------------------------------------*/	
	var setPara_ProduceCity = ""; 	
	var pageSize_ProduceCity = 10;//每页行数 
	var currentCount_ProduceCity = 0;//当前条数 	
	
	//区域 
	function fillTable_ProduceCity(msg) {
		var str = '[{"Title1": "区域", "Title2": "激活客户数", "Title3": "产单客户数", "Title4": "产单数", "Title5": "产单率", "Title6": "产单总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CITY+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].PRODUCE_CUSTOMER_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_COUNT+	'",'+
					'"Column5":"'+msg[key].test.resultSet[o].PRODUCE_PER+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_PAID_AMT+						
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ProduceCity,str,eval("currentCount_" + setPara_ProduceCity),eval("pageSize_" + setPara_ProduceCity),totalCount);		
	};	
	/*-----------------------------------------市场人员-----------------------------------------*/	
	var setPara_ProduceAccount = ""; 	
	var pageSize_ProduceAccount = 10;//每页行数 
	var currentCount_ProduceAccount = 0;//当前条数 	
	
	//市场人员 
	function fillTable_ProduceAccount(msg) {
		var str = '[{"Title1": "市场人员", "Title2": "激活客户数", "Title3": "产单客户数", "Title4": "产单数", "Title5": "产单率", "Title6": "产单总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_ADMIN_LOGIN_ACCOUNT+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].PRODUCE_CUSTOMER_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_COUNT+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].PRODUCE_PER+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_PAID_AMT+						
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ProduceAccount,str,eval("currentCount_" + setPara_ProduceAccount),eval("pageSize_" + setPara_ProduceAccount),totalCount);		
	};		
	/*-----------------------------------------团队-----------------------------------------*/	
	var setPara_ProduceStructures = ""; 	
	var pageSize_ProduceStructures = 10;//每页行数 
	var currentCount_ProduceStructures = 0;//当前条数 	
	
	//团队 
	function fillTable_ProduceStructures(msg) {
		var str = '[{"Title1": "团队", "Title2": "激活客户数", "Title3": "产单客户数", "Title4": "产单数", "Title5": "产单率", "Title6": "产单总金额"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_STRUCTURE_NAME+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].EXECUTE_COUNT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].PRODUCE_CUSTOMER_COUNT+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_COUNT+'",'+	
					'"Column5":"'+msg[key].test.resultSet[o].PRODUCE_PER+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].PRODUCE_ORDER_PAID_AMT+						
					'"},';	
			}	
		}
		str = (str.substring(0,str.length-1))+']';
		fillData(setPara_ProduceStructures,str,eval("currentCount_" + setPara_ProduceStructures),eval("pageSize_" + setPara_ProduceStructures),totalCount);		
	};		
	
	
	/*=========================================客户漏斗主表=========================================*/		
	/*-----------------------------------------漏斗图-----------------------------------------*/	
	var setPara_Company = "";
	var pageSize_Company = 10;
	var currentCount_Company = 0;	
	
	//冒泡
	function bubbleSort(Value){
		var temp = 0;
		for (var i = 0; i < Value.length; i++)
		{
			for (var j = 0; j < Value.length - i; j++)
			{
				if (Value[j] > Value[j + 1])
				{
					temp = Value[j + 1];
					Value[j + 1] = Value[j];
					Value[j] = temp;
				}
			}
		};
		
		return Value;
	};

	//填充表格数据
	function fillTable_Company(msg) {
		// data: ['预报读','预报读跟踪','报读','缴费']
		var strFunnel = '[';
		var strGauge = '[';
		var strWant = '[';
		var strSuccess = '[';
		var strLost = '[';
		for(var key in msg){	
			for ( var o in msg[key].test.resultSet) {	
				strFunnel +='{"value":"'+msg[key].test.resultSet[o].FUNNEL_WILL_COUNT+'","name":"总客户"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_AGREE_COUNT+'","name":"已分配"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_AFFIRM_COUNT+'","name":"覆盖跟踪"},'+
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_EXECUTE_COUNT+'","name":"已激活"},'+					
					'{"value":"'+msg[key].test.resultSet[o].FUNNEL_PRODUCE_COUNT+'","name":"产单"}]';	
		
				switch(name){
					case '总客户':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_WILL_PER + '","name":"总转化率"}]';
						break;
					case '已分配':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_AGREE_PER + '","name":"已分配转化率"}]';
						break;
					case '覆盖跟踪':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_AFFIRM_PER + '","name":"覆盖转化率"}]';
						break;
					case '已激活':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_EXECUTE_PER + '","name":"激活转化率"}]';
						break;			
					case '产单':
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_PRODUCE_PER + '","name":"产单转化率"}]';
						break;						
					default:	
						strGauge += '{"value":"'+msg[key].test.resultSet[o].FUNNEL_WILL_PER + '","name":"总转化率"}]';
				};
				
				//取最大值
				var WantValue = [msg[key].test.resultSet[o].FUNNEL_WILL_WANT/1000,
				                msg[key].test.resultSet[o].FUNNEL_AGREE_WANT/1000,
				                msg[key].test.resultSet[o].FUNNEL_AFFIRM_WANT/1000,
				                msg[key].test.resultSet[o].FUNNEL_EXECUTE_WANT/1000,
				                msg[key].test.resultSet[o].FUNNEL_PRODUCE_WANT/1000];
				
				WantValue = bubbleSort(WantValue);
				//取最小值
				var LostValue = [msg[key].test.resultSet[o].FUNNEL_WILL_LOST/1000 , 
				 				msg[key].test.resultSet[o].FUNNEL_AGREE_LOST/1000 , 
				 				msg[key].test.resultSet[o].FUNNEL_AFFIRM_LOST/1000 ,
				 				msg[key].test.resultSet[o].FUNNEL_EXECUTE_LOST/1000 ,
				 				msg[key].test.resultSet[o].FUNNEL_PRODUCE_LOST/1000 ];
				
				LostValue = bubbleSort(LostValue);
				
				strWant += msg[key].test.resultSet[o].FUNNEL_WILL_WANT/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_AGREE_WANT/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_AFFIRM_WANT/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_EXECUTE_WANT/1000 + 						
						',' + msg[key].test.resultSet[o].FUNNEL_PRODUCE_WANT/1000 +']';
				
				strSuccess += msg[key].test.resultSet[o].FUNNEL_WILL_SUCCESS/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_AGREE_SUCCESS/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_AFFIRM_SUCCESS/1000 + 
						',' + msg[key].test.resultSet[o].FUNNEL_EXECUTE_SUCCESS/1000 + 						
						',' + msg[key].test.resultSet[o].FUNNEL_PRODUCE_SUCCESS/1000 +']';	
						
				strLost += Math.abs(msg[key].test.resultSet[o].FUNNEL_WILL_LOST)/1000 + 
						',' + Math.abs(msg[key].test.resultSet[o].FUNNEL_AGREE_LOST)/1000 + 
						',' + Math.abs(msg[key].test.resultSet[o].FUNNEL_AFFIRM_LOST)/1000 + 
						',' + Math.abs(msg[key].test.resultSet[o].FUNNEL_EXECUTE_LOST)/1000 + 						
						',' + Math.abs(msg[key].test.resultSet[o].FUNNEL_PRODUCE_LOST)/1000 +']';							
			}	
		}		
	//生成漏斗图
	myChart01.setOption(option = {			
			color: ['#59afe8', '#51bcc3', '#a3d75b', '#fba407', '#fec42c', '#dd4444', '#d4df5a', '#cd4870'],
			tooltip: {
		        formatter: function(StudentMsg){
		        	console.log(StudentMsg);
		        	var a = "";
		        	var b = StudentMsg["name"] + " : " + StudentMsg["value"] + "<br/>说明：<br/>"
					switch(StudentMsg["name"]){
						case '总客户':
							a += b + "大型CRM客户和中小型CRM客户";
							break;
						case '已分配':
							a += b + "已有跟踪负责人客户";
							break;
						case '覆盖跟踪':
							a += b + "已有人联系跟踪客户";
							break;
						case '已激活':
							a += b + "已经建立合作关系客户";
							break;	
						case '产单':
							a += b + "已有职工报读产品的客户";
							break;								
						default:	
							a += b + "包含有预报读订单和直接下订单的学员数";
					};		    			
		        	return a
		        },
                textStyle:{
                	color:'#fff'
                }
		    },
		    animationEasing:'quinticIn',
		    toolbox: {		    			    
		        orient:'vertical',
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },
		    legend: {
		        data: ['总客户','已分配','覆盖跟踪','已激活','产单']
		    },
		    calculable: true,
		    series: [
		        {
		            name:'漏斗图',
		            type:'funnel',
		            left: '1%',
		            top: 60,				     
		            bottom: 60,
		            width: '80%',
		            sort: 'funnel',
		            gap: 10,
		            label: {
		                normal: {
		                    show: true,
		                    position: 'inside',
		                    formatter: "{b} : {c}",
		                    textStyle:{
		                    	color:'#000'
		                    }
		                },
		                emphasis: {
		                    textStyle: {
		                        fontSize: 20,
		                        color:'#000'
		                    }
		                }
		            },
		            labelLine: {
		                normal: {
		                    length: 10,
		                    lineStyle: {
		                        width: 1,
		                        type: 'solid'
		                    }
		                }
		            },
		            itemStyle: {
		                normal: {
		                    borderColor: '#fff',
		                    borderWidth: 1
		                }
		            },
		            data: eval("("+strFunnel+ ")")
		        }
		    ]
		});
		//生成仪表盘
		myChart02.setOption(option = {
			tooltip : {
		        formatter:function(StudentMsg){
		        	console.log(StudentMsg);
		        	var a = "";
		        	var b = StudentMsg["name"] + " : " + StudentMsg["value"] + "<br/>说明：<br/>"
					switch(StudentMsg["name"]){
						case '总客户转化率':
							a += b + "总客户数 / 总客户数";
							break;
						case '已分配转化率':
							a += b + "已分配客户数 / 总客户数";
							break;
						case '覆盖转化率':
							a += b + "覆盖跟踪客户数 / 已分配客户数";
							break;
						case '激活转化率':
							a += b + "已激活客户数 / 覆盖客户数";
							break;					
						case '产单转化率':
							a += b + "产单客户数 / 已激活客户数";
							break;											
						default:	
							a += b + "总客户数 / 总客户数";
					};		    			
		        	return a
		        },
		        position:['25%', '25%']
		    },
		    animationDurationUpdate:1500,
		    toolbox: {		    			    
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },
		    series: [
		        {
		            name: '业务指标',
		            type: 'gauge',
		            splitNumber: 10,       // 分割段数，默认为5
		            axisLine: {            // 坐标轴线
		                lineStyle: {       // 属性lineStyle控制线条样式
		                	color: [[0.2, '#51bcc3'],[0.8, '#a3d75b'],[1, '#fba407']], 
		                    width: 8
		                }		                
		            },
				    axisLabel:{
				    	textStyle:{
				    		color:'#000'
				    	}
				    },
		            detail: {
		            	formatter:'{value}%',
		            	offsetCenter: [0, '60%'] 
		            	},
		            data: eval("("+strGauge+ ")")
		        }
		    ]
		});	
		//生成条形图
		myChart03.setOption(option = { 
			color: ['#59afe8', '#51bcc3', '#fba407', '#fec42c', '#dd4444', '#d4df5a', '#cd4870'],
			tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
		    animationEasing:'bounceOut',
		    toolbox: {		    			    
		        left:'left',
		        feature: {
		            dataView: {readOnly: false},
		            restore: {},
		            saveAsImage: {}
		        }
		    },		    
		    legend: {
		        data:[ '成功', '流失']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
				        {
				            type : 'category',
				            data :['总客户','已分配','覆盖跟踪','已激活','产单']
				        }
		    ],
		    yAxis : [
				        {
				            type : 'value',
				            name: '单位:千',
				            min: 0,
				            max: (parseInt(WantValue[WantValue.length-1]/100)+1)*100,
				            interval: 50,
				            axisLabel: {
				                formatter: '{value} '
				            }
				        }
		    ],
		    series : [
		        {
		            name:'成功',
		            type:'bar',
		            stack: '总量',
		            data:eval("("+strSuccess+ ")")
		        },
		        {
		            name:'流失',
		            type:'bar',
		            stack: '总量',
		            data:eval("("+strLost+ ")")
		        }
		    ]
        });//myChart03.setOption
	};
	</script>
</body>

</html>
