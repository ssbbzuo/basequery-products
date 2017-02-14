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
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<!--
				    <div class="panel-heading">
				        <div class="panel-heading"><i class="fa fa-search" aria-hidden="true"></i> 学员数据 </div>
				    </div>
				     -->
				    <div class="panel-heading-title">
						<span class="pht-span">学员数据</span>
					</div>
					<div class="panel-body">
						<div class="col-md-4 panel-body">							
							<a class="btn btn-info">
								<i class="fa fa-address-card fa-5x"></i></a>
						</div>
						<div class="col-md-8 panel-body xue-data" id = 'Number01'>
							<!-- 加载学员信息 -->
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-primary">
					<!-- 
				    <div class="panel-heading">
				    	<div class="panel-heading"><i class="fa fa-search" aria-hidden="true"></i> 客户数据 </div>
				    </div>
				     -->
				    <div class="panel-heading-title">
						<span class="pht-span">客户数据</span>
					</div>
					<div class="panel-body">
						<div class="col-md-4 panel-body">
						<a class="btn btn-info">
							<i class="fa fa-handshake-o fa-5x"></i></a>
						</div>
						<div class="col-md-8 panel-body xue-data" id = 'Number02'>
							<!-- 加载客户信息 -->
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
		   <div class="col-xs-6 col-md-3">	   
				<div class="panel panel-default" >			
					<center>
						<div id="studentPer"  data-info="学员增长率" data-dimension="180" data-width="20" data-fontsize="25"  data-fgcolor="#59afe8" data-bgcolor="#eee"></div>
					</center>																	
				</div>
		   </div>
		   <div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<center>
						<div id="newstudentPer" data-info="报读学员增长率" data-dimension="180" data-width="20" data-fontsize="25"  data-fgcolor="#51bcc3" data-bgcolor="#eee"></div>
					</center>								
				</div>
			</div>
		   <div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<center>
						<div  id="companyPer" data-info="客户增长率" data-dimension="180" data-width="20" data-fontsize="25"  data-fgcolor="#a3d75b" data-bgcolor="#eee"></div>
					</center>											
				</div>
			</div>		   
		   <div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<center>
						<div id="newcompanyPer" data-info="合作客户增长率" data-dimension="180" data-width="20" data-fontsize="25"  data-fgcolor="#fba407" data-bgcolor="#eee"></div>
					</center>													
				</div>
			</div>				   
		</div>
			
		<div class="box">
			<ul class="tabList order-list">
				<li>
					<a href="javascript:" class="on">年度</a>
				</li>
				<li>
					<a href="javascript:">本年</a>
				</li>
				<li>
					<a href="javascript:">本月 </a>
				</li>
			</ul>
			<div class="tabBox order-box">
				<div class="tbCont">
					<div class="tab-pane fade in active" id="main1" ></div>
				</div>
				<div class="tbCont" style="height:0;">
					<div class="tab-pane fade in active" id="main2" ></div>
				</div>
				<div class="tbCont" style="height:0;">
					<div class="tab-pane fade in active" id="main3" ></div>
				</div>
			</div>
		</div>			
		

		<div class="row">
			<div class="col-md-5">
			
				<div class="panel panel-default" >
					<ul class="tabList order-list">
						<li>
							<a href="javascript:" class="on">本年</a>
						</li>						
						<li>
							<a href="javascript:">本月 </a>
						</li>						
					</ul>
					<div class="tabBox order-box">
						<div class="tbCont">							
							<div class="btn btn-link" href="javascript:" id="refreshTableYear"><i class="fa fa-refresh" aria-hidden="true"> 刷新</i></div>	
							<div class="main-chart" id="main4" ></div>
						</div>
						<div class="tbCont"  style="height:0;">							
							<div class="btn btn-link" href="javascript:"  id="refreshTableYearMonth"><i class="fa fa-refresh" aria-hidden="true"> 刷新</i></div>
							<div class="main-chart" id="main5" ></div>
						</div>
					</div>
					<div style="display: none;" id="CODE_NAME"></div>
				</div>
			</div>
			<div class="col-md-7" >
				<div class="col_2">
					<div class="panel panel-primary" id="container-TableYear">
						<!-- <div class="panel-heading"><i class="fa fa-list" aria-hidden="true"></i> 网院信息</div> -->
						<div class="panel-heading-title">
							<span class="pht-span">网院信息</span>
						</div>
						<div class="panel panel-default panel-body">
							<div id="TableYear">
								<div class="resp-tabs-container hor_1">
									<div id="jsontotable-TableYear" >
										<!-- 加载表格 -->
										<div id="pageTool-TableYear"> <!-- 加载分页控件 --> 										
										</div>															
									</div>
								</div>
							</div>					
						</div>
					</div>						
					<div class="panel panel-primary" id="container-TableYearMonth">
						<!-- <div class="panel-heading">
								<i class="fa fa-list" aria-hidden="true"></i> 网院信息				
						</div> -->
						<div class="panel-heading-title">
							<span class="pht-span">网院信息</span>
						</div>
						<div class="panel panel-default panel-body">
							<div id="TableYearMonth">
								<div class="resp-tabs-container hor_1">
									<div id="jsontotable-TableYearMonth" >
										<!-- 加载表格 -->
										<div id="pageTool-TableYearMonth"> <!-- 加载分页控件 --> 										
										</div>																			
									</div>						
								</div>
							</div>					
						</div>
					</div>						
				</div>
			</div>		 
		</div><!--/.row-->
		

			
	</div><!--/.main-->
	<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
	
	

<script>
	$(function() { 
		//加载数据
		pageData();
		//重新初始化
		initPage();
		$("#container-TableYearMonth").hide();
		

	});
	
	$("#refreshTableYear").click(function(){
		pageSize_TableYear = 10;
		currentCount_TableYear = 0;	
		$("div#CODE_NAME").empty();	
		buildFunc("TableYear",name);	
	});
	
	$("#refreshTableYearMonth").click(function(){
		pageSize_TableYearMonth = 10;
		currentCount_TableYearMonth = 0;	
		$("div#CODE_NAME").empty();	
		buildFunc("TableYearMonth",name);			
	});	

	var initFunnelData = ['Number','BarAll','BarYear','BarMonth','PieYear','PieMonth','TableYear','TableYearMonth'];

	/*=========================================公用部分=========================================*/
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
	//json传送数据
	function buildFunc(setPara){
		eval('function ' +setPara + '(){'+
				'var jsonDate = {'+
				'"CODE_NAME" :$("#DIM_CODE_NAME").val(),'+
				'"currentCount" : eval("currentCount_'+ setPara + '"),'+
				'"pageSize" : eval("pageSize_'	+ setPara + '")};'+		
				'$.ajax({'+
					'url : "<%=request.getContextPath()%>/ThemeFunnelMain'+setPara+'",'+			
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
		$('#pageToolbar-'+setStr).Paging({pagesize:eval("pageSize_" + setStr),current:((eval("currentCount_" + setStr)/eval("pageSize_" + setStr))+1),count:total,
			callback:function(page,size,count){
					console.log(arguments);		
					eval("currentCount_" + setStr + "=" +  ((page-1)*size)); 
					eval("pageSize_" + setStr + "=" +  size);
					pageData();		
				}	
		});
	};	
	
	/*=========================================Echarts参数设置=========================================*/
	/*-------------柱状图-------------*/
	//年度
	var worldMapContainer1 = document.getElementById('main1');
	//本年
	var worldMapContainer2 = document.getElementById('main2');
	//本月
	var worldMapContainer3 = document.getElementById('main3');
	/*-------------饼图-------------*/
	//本年
	var worldMapContainer4 = document.getElementById('main4');
	//本月
	var worldMapContainer5 = document.getElementById('main5');
	

	//用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
	var resizeWorldMapContainer = function () {		
		/*-------------柱状图-------------*/
		//年度
	    worldMapContainer1.style.height = document.body.clientWidth*0.25+'px';
	  	//本年
	    worldMapContainer2.style.height = document.body.clientWidth*0.25+'px';
	  	//本月
	    worldMapContainer3.style.height = document.body.clientWidth*0.25+'px';
		/*-------------饼图-------------*/
	  	//本年
	    //worldMapContainer4.style.height = window.document.getElementById('TableYear').offsetHeight-55+'px';
		worldMapContainer4.style.height = '368px';
	  	//本月
	    worldMapContainer5.style.height = '368px';
	  	

	};
		
	//设置容器高宽
	resizeWorldMapContainer();	
	
	/*-------------柱状图-------------*/
	//年度
	var myChart01 = echarts.init(worldMapContainer1,'macarons');
	//本年
	var myChart02 = echarts.init(worldMapContainer2,'macarons');
	//本月
	var myChart03 = echarts.init(worldMapContainer3,'macarons');
	/*-------------饼图-------------*/
	//本年
	var myChart04 = echarts.init(worldMapContainer4,'macarons');
	//本月
	var myChart05 = echarts.init(worldMapContainer5,'macarons');
	
	
	/*=========================================主页(数字)=========================================*/
	var a = 0;
	var setPara_Number = "";
	var pageSize_Number = 10;
	var currentCount_Number = 0;	
	function fillTable_Number(msg) {
		var studentPer = 0;
		var companyPer = 0;
		var newstudentPer = 0;
		var newcompanyPer = 0;
		//清空数字		
		$("div#Number01").empty();
		$("div#Number02").empty();
		
		var strNumber01 = '[';
		for(var key in msg){	
			for ( var o in msg[key].test.resultSet) {			
				$("div#Number01").append(
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_STUDENT+'</span><br>累计学员</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_READ_STUDENT+'</span><br>累计已报读学员</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_NEW_STUDENT+'</span><br>今年新增学员</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_NEW_READ_STUDENT+'</span><br>今年新增报读学员</p></div>'+
						'<div class="col-md-6"><p><span>'+"-"+'</span><br>累计在读学员</p></div>'
						);
				
				$("div#Number02").append(
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_CUSTOMER+'</span><br>累计客户</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_WORK_CUSTOMER+'</span><br>累计合作客户</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_NEW_CUSTOMER+'</span><br>今年新增客户</p></div>'+
						'<div class="col-md-6"><p><span>'+msg[key].test.resultSet[o].COUNT_NEW_WORK_CUSTOMER+'</span><br>今年新增合作客户</p></div>'+
						'<div class="col-md-6"><p><span>'+"-"+'</span><br>累计在读学员客户</p></div>'
						);				
				
				studentPer = (msg[key].test.resultSet[o].COUNT_NEW_STUDENT / msg[key].test.resultSet[o].COUNT_STUDENT *100).toFixed(2);
				companyPer = (msg[key].test.resultSet[o].COUNT_NEW_CUSTOMER / msg[key].test.resultSet[o].COUNT_CUSTOMER *100).toFixed(2);
				newstudentPer = (msg[key].test.resultSet[o].COUNT_NEW_READ_STUDENT / msg[key].test.resultSet[o].COUNT_READ_STUDENT *100).toFixed(2);
				newcompanyPer = (msg[key].test.resultSet[o].COUNT_NEW_WORK_CUSTOMER / msg[key].test.resultSet[o].COUNT_WORK_CUSTOMER *100).toFixed(2);				
			}
		}
		$('#studentPer').attr("data-text",studentPer +"%").attr("data-percent",studentPer);		
		$('#companyPer').attr("data-text",companyPer + "%").attr("data-percent",companyPer);		
		$('#newstudentPer').attr("data-text",newstudentPer+"%").attr("data-percent",newstudentPer);		
		$('#newcompanyPer').attr("data-text",newcompanyPer+"%").attr("data-percent",newcompanyPer);
		
		if(a == 0){
			$('#studentPer').circliful();
			$('#companyPer').circliful();
			$('#newstudentPer').circliful();
			$('#newcompanyPer').circliful();
			a += 1;
		}
		
	};

	/*=========================================主页(柱状图)=========================================*/
	var setPara_BarAll = "";
	var pageSize_BarAll = 10;
	var currentCount_BarAll = 0;	
	var number = 1000;

	// 年度
	function fillTable_BarAll(msg) {	
		var strYear = '[';
		var strStudent = '[';
		var strOrder = '[';	
		var studentList = [];
		var orderList = [];
		
		for(var key in msg){	
			for ( var o in msg[key].test.resultSet) {			
				strYear += msg[key].test.resultSet[o].DIM_YEAR+',';
				strStudent += msg[key].test.resultSet[o].COUNT_STUDENT/number+',';
				strOrder += msg[key].test.resultSet[o].COUNT_ORDER/number+',';	
				
				studentList.push(msg[key].test.resultSet[o].COUNT_STUDENT/number);
				orderList.push(msg[key].test.resultSet[o].COUNT_ORDER/number);
			}
		}
		
		strYear = strYear.substring(0,strYear.length-1)+']';
		strStudent = strStudent.substring(0,strStudent.length-1)+']';
		strOrder = strOrder.substring(0,strOrder.length-1)+']';
		
		studentList = bubbleSort(studentList);
		var studentMax = parseInt(studentList[studentList.length-1]) < 10 ? parseInt(studentList[studentList.length-1])+1 : parseInt(studentList[studentList.length-1]);
		var studentInterval = parseInt(studentList[studentList.length-1]) < 10 ? 2 : parseInt(studentList[studentList.length-1]/5);
		
		orderList = bubbleSort(orderList);
		var orderMax = parseInt(orderList[orderList.length-1]) < 10 ? parseInt(orderList[orderList.length-1])+1 : parseInt(orderList[orderList.length-1]);
		var orderInterval = parseInt(orderList[orderList.length-1]) < 10 ? 2 : parseInt(orderList[orderList.length-1]/5);
		
		myChart01.setOption(option = {
				color: ['#59afe8', '#a3d75b', '#fba407', '#fec42c', '#dd4444', '#d4df5a'],
				title: {
			        text: '年度学生与订单趋势分析'
			    },
				tooltip: {
			        trigger: 'axis'
			    },
			    animationEasing:'bounceOut',
			    toolbox: {
			        feature: {
			            dataView: {show: true, readOnly: false},
			            magicType: {show: true, type: ['line', 'bar']},
			            restore: {show: true},
			            saveAsImage: {show: true}
			        }
			    },
			    legend: {
			        data:['学生数','订单数']
			    },
			    xAxis: [
			        {
			            type: 'category',
			            data: eval("("+(strYear)+ ")")
			        }
			    ],
			    yAxis: [
			        {
			            type: 'value',
			            name: '学生数',
			            min: 0,
			            max: studentMax,
			            interval: studentInterval,
			            axisLabel: {
			                formatter: '{value} K'
			            }
			        },
			        {
			            type: 'value',
			            name: '订单数',
			            min: 0,
			            max: orderMax,
			            interval: orderInterval,
			            axisLabel: {
			                formatter: '{value} K'
			            }
			        }
			    ],
			    series: [
			        {
			            name:'学生数',
			            type:'bar',
			            barWidth : 40,//柱图宽度
			            data:eval("("+(strStudent)+ ")")
			        },
			        {
			            name:'订单数',
			            type:'line',
			            yAxisIndex: 1,
			            data:eval("("+(strOrder)+ ")")
			        }
			    ]
	    	});//myChart01.setOption			
		};	
		
		var setPara_BarYear = "";
		var pageSize_BarYear = 10;
		var currentCount_BarYear = 0;
		
		// 本年
		function fillTable_BarYear(msg) {	
			var strYear = '[';
			var strStudent = '[';
			var strOrder = '[';	
			var studentList = [];
			var orderList = [];
			
			for(var key in msg){	
				for ( var o in msg[key].test.resultSet) {			
					strYear += msg[key].test.resultSet[o].DIM_MONTH+',';
					strStudent += msg[key].test.resultSet[o].COUNT_STUDENT/number+',';
					strOrder += msg[key].test.resultSet[o].COUNT_ORDER/number+',';	
					
					studentList.push(msg[key].test.resultSet[o].COUNT_STUDENT/number);
					orderList.push(msg[key].test.resultSet[o].COUNT_ORDER/number);
				}
			}
			
			strYear = strYear.substring(0,strYear.length-1)+']';
			strStudent = strStudent.substring(0,strStudent.length-1)+']';
			strOrder = strOrder.substring(0,strOrder.length-1)+']';
			
			studentList = bubbleSort(studentList);
			var studentMax = parseInt(studentList[studentList.length-1]) < 10 ? parseInt(studentList[studentList.length-1])+1 : parseInt(studentList[studentList.length-1]);
			var studentInterval = parseInt(studentList[studentList.length-1]) < 10 ? 2 : parseInt(studentList[studentList.length-1]/5);
			
			orderList = bubbleSort(orderList);
			var orderMax = parseInt(orderList[orderList.length-1]) < 10 ? parseInt(orderList[orderList.length-1])+1 : parseInt(orderList[orderList.length-1]);
			var orderInterval = parseInt(orderList[orderList.length-1]) < 10 ? 2 : parseInt(orderList[orderList.length-1]/5);
			
			myChart02.setOption(option = {
					color: ['#59afe8', '#cd4870', '#fba407', '#fec42c', '#dd4444', '#d4df5a'],
					title: {
				        text: '本年学生与订单趋势分析'
				    },
					tooltip: {
				        trigger: 'axis'
				    },
				    animationEasing:'bounceOut',
				    toolbox: {
				        feature: {
				            dataView: {show: true, readOnly: false},
				            magicType: {show: true, type: ['line', 'bar']},
				            restore: {show: true},
				            saveAsImage: {show: true}
				        }
				    },
				    legend: {
				        data:['学生数','订单数']
				    },
				    xAxis: [
				        {
				            type: 'category',
				            data: eval("("+(strYear)+ ")")
				        }
				    ],
				    yAxis: [
				        {
				            type: 'value',
				            name: '学生数',
				            min: 0,
				            max: studentMax,
				            interval: studentInterval,
				            axisLabel: {
				                formatter: '{value} K'
				            }
				        },
				        {
				            type: 'value',
				            name: '订单数',
				            min: 0,
				            max: orderMax,
				            interval: orderInterval,
				            axisLabel: {
				                formatter: '{value} K'
				            }
				        }
				    ],
				    series: [
				        {
				            name:'学生数',
				            type:'bar',
				            barWidth : 40,//柱图宽度
				            data:eval("("+(strStudent)+ ")")
				        },
				        {
				            name:'订单数',
				            type:'line',
				            yAxisIndex: 1,
				            data:eval("("+(strOrder)+ ")")
				        }
				    ]
		    	});//myChart02.setOption			
			};	
			
			var setPara_BarMonth = "";
			var pageSize_BarMonth = 10;
			var currentCount_BarMonth = 0;
			
			//本月
			function fillTable_BarMonth(msg) {	
				var strYear = '[';
				var strStudent = '[';
				var strOrder = '[';	
				var studentList = [];
				var orderList = [];
				
				for(var key in msg){	
					for ( var o in msg[key].test.resultSet) {			
						strYear += msg[key].test.resultSet[o].DIM_DATE+',';
						strStudent += msg[key].test.resultSet[o].COUNT_STUDENT/number+',';
						strOrder += msg[key].test.resultSet[o].COUNT_ORDER/number+',';	
						
						studentList.push(msg[key].test.resultSet[o].COUNT_STUDENT/number);
						orderList.push(msg[key].test.resultSet[o].COUNT_ORDER/number);
					}
				}
				
				strYear = strYear.substring(0,strYear.length-1)+']';
				strStudent = strStudent.substring(0,strStudent.length-1)+']';
				strOrder = strOrder.substring(0,strOrder.length-1)+']';
				
				studentList = bubbleSort(studentList);
				var studentMax = parseInt(studentList[studentList.length-1]) < 10 ? parseInt(studentList[studentList.length-1])+1 : parseInt(studentList[studentList.length-1]);
				var studentInterval = parseInt(studentList[studentList.length-1]) < 10 ? 2 : parseInt(studentList[studentList.length-1]/5);
				
				orderList = bubbleSort(orderList);
				var orderMax = parseInt(orderList[orderList.length-1]) < 10 ? parseInt(orderList[orderList.length-1])+1 : parseInt(orderList[orderList.length-1]);
				var orderInterval = parseInt(orderList[orderList.length-1]) < 10 ? 2 : parseInt(orderList[orderList.length-1]/5);
				
				myChart03.setOption(option = {
						color: ['#59afe8', '#cd4870', '#fba407', '#fec42c', '#dd4444', '#d4df5a'],
						title: {
					        text: '本月学生与订单趋势分析'
					    },
						tooltip: {
					        trigger: 'axis'
					    },
					    animationEasing:'bounceOut',
					    toolbox: {
					        feature: {
					            dataView: {show: true, readOnly: false},
					            magicType: {show: true, type: ['line', 'bar']},
					            restore: {show: true},
					            saveAsImage: {show: true}
					        }
					    },
					    legend: {
					        data:['学生数','订单数']
					    },
					    xAxis: [
					        {
					            type: 'category',
					            data: eval("("+(strYear)+ ")")
					        }
					    ],
					    yAxis: [
					        {
					            type: 'value',
					            name: '学生数',
					            min: 0,
					            max: studentMax,
					            interval: studentInterval,
					            axisLabel: {
					                formatter: '{value} K'
					            }
					        },
					        {
					            type: 'value',
					            name: '订单数',
					            min: 0,
					            max: orderMax,
					            interval: orderInterval,
					            axisLabel: {
					                formatter: '{value} K'
					            }
					        }
					    ],
					    series: [
					        {
					            name:'学生数',
					            type:'bar',
					            barWidth : 20,//柱图宽度
					            data:eval("("+(strStudent)+ ")")
					        },
					        {
					            name:'订单数',
					            type:'line',
					            yAxisIndex: 1,
					            data:eval("("+(strOrder)+ ")")
					        }
					    ]
			    	});//myChart03.setOption			
				};				
				
	/*=========================================主页(饼图)=========================================*/
	//本年
	var setPara_PieYear = "";
	var pageSize_PieYear = 10;
	var currentCount_PieYear = 0;
			
	function fillTable_PieYear(msg) {	
			var strPieYear = '[';
			var strCodeName = '[';
			
			for(var key in msg){	
				for ( var o in msg[key].test.resultSet) {	
					strPieYear +='{"value":"'+msg[key].test.resultSet[o].COUNT_THISYEAR+
						'","name":"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'"},';
					strCodeName += '"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'",';
				}
			}
			
			strPieYear = strPieYear.substring(0,strPieYear.length-1)+']';
			strCodeName = strCodeName.substring(0,strCodeName.length-1)+']';			

			
			myChart04.setOption(option = {
					//color: ['#f8bf7d', '#ffd2c2', '#9dc5c4', '#dee5e5', '#d48484', '#3c8dbc', '#59afe8'],
	    			title : {
	    		        text: '网院学员占比',
	    		        x:'center'
	    		    },
	    		    tooltip : {
	    		        trigger: 'item',
	    		        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    		    },
	    		    legend: {
	    		    	bottom: '10',
	    		        data: eval("("+(strCodeName)+ ")")
	    		    },
	    		    series : [
	    		        {
	    		            name: '学员数据',
	    		            type: 'pie',
	    		            radius : '55%',
	    		            data:eval("("+(strPieYear)+ ")"),
				            label: {
				                normal: {
				                    show: true,
				                    formatter: "{b}:{d}%"
				                },
				                emphasis: {
				                    textStyle: {
				                        fontSize: 20
				                    }
				                }
				            },
	    		            itemStyle: {
	    		                emphasis: {
	    		                    shadowBlur: 10,
	    		                    shadowOffsetX: 0,
	    		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	    		                }
	    		            }
	    		        }
	    		    ]
		    	});//myChart04.setOption			
			};					

			//月
			var setPara_PieMonth = "";
			var pageSize_PieMonth = 10;
			var currentCount_PieMonth = 0;
					
			function fillTable_PieMonth(msg) {	
					var strPieMonth = '[';
					var strCodeName = '[';
					
					for(var key in msg){	
						for ( var o in msg[key].test.resultSet) {	
							strPieMonth +='{"value":"'+msg[key].test.resultSet[o].COUNT_THISMONTH+
								'","name":"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'"},';
							strCodeName += '"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'",';
						}
					}
					
					strPieMonth = strPieMonth.substring(0,strPieMonth.length-1)+']';
					strCodeName = strCodeName.substring(0,strCodeName.length-1)+']';			

					
					myChart05.setOption(option = {
							//color: ['#f8bf7d', '#ffd2c2', '#9dc5c4', '#dee5e5', '#d48484', '#3c8dbc', '#59afe8'],
			    			title : {
			    		        text: '网院学员占比',
			    		        x:'center'
			    		    },
			    		    tooltip : {
			    		        trigger: 'item',
			    		        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    		    },
			    		    legend: {			    		  
			    		    	bottom: '10',
			    		        data: eval("("+(strCodeName)+ ")")
			    		    },
			    		    series : [
			    		        {
			    		            name: '学员数据',
			    		            type: 'pie',
			    		            radius : '55%',
			    		            data:eval("("+(strPieMonth)+ ")"),
						            label: {
						                normal: {
						                    show: true,
						                    formatter: "{b}:{d}%"
						                },
						                emphasis: {
						                    textStyle: {
						                        fontSize: 20
						                    }
						                }
						            },
			    		            itemStyle: {
			    		                emphasis: {
			    		                    shadowBlur: 10,
			    		                    shadowOffsetX: 0,
			    		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			    		                }
			    		            }
			    		        }
			    		    ]
				    	});//myChart04.setOption			
					};						
           
		//图表自适应屏幕
		setTimeout(function() {
			window.onresize = function() {
				resizeWorldMapContainer();
				myChart01.resize();
				myChart02.resize();
				myChart03.resize();
				myChart04.resize();
				myChart05.resize();
			}
		}, 200)//setTimeout        
		
		myChart04.on('click',function(params) {
			var name = "";
			for ( var key in params) {
				if (key == "data") {
					name = params[key]["name"];
				}
			}		
			pageSize_TableYear = 10;
			currentCount_TableYear = 0;	
			$("div#CODE_NAME").empty();
			$("div#CODE_NAME").append('<input id="DIM_CODE_NAME" type="text" class="form-control" value="'+name+'" placeholder="网院">');
			buildFunc("TableYear");			
		});		
		
		myChart05.on('click',function(params) {
			var name = "";
			for ( var key in params) {
				if (key == "data") {
					name = params[key]["name"];
				}
			}		
			pageSize_TableYearMonth = 10;
			currentCount_TableYearMonth = 0;	
			$("div#CODE_NAME").empty();
			$("div#CODE_NAME").append('<input id="DIM_CODE_NAME" type="text" style="display: none;" class="form-control" value="'+name+'" placeholder="网院">');
			buildFunc("TableYearMonth",name);			
		});			
		
	/*=========================================主页(表格)=========================================*/	
	/*-----------------------------------------年份-----------------------------------------*/
	var setPara_TableYear = "";
	var pageSize_TableYear = 10;
	var currentCount_TableYear = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_TableYear(msg) {
		var str = '[{"Title1": "网院", "Title2": "日期", "Title3": "本年报读学员数", "Title4": "往年累计报读学员数", "Title5": "目前报读学员数", "Title6": "本年新增占比"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].CREATED_DT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].COUNT_THISYEAR+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].COUNT_BEFOREYEAR+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].COUNT_ALL+'",'+
					'"Column6":"'+msg[key].test.resultSet[o].STUDENT_PER+'%"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';

		fillData(setPara_TableYear,str,eval("currentCount_" + setPara_TableYear),eval("pageSize_" + setPara_TableYear),totalCount);		
		
	};		
	
	/*-----------------------------------------年月-----------------------------------------*/
	var setPara_TableYearMonth = "";
	var pageSize_TableYearMonth = 10;
	var currentCount_TableYearMonth = 0;	
	//填充表格数据 预报读咨询 学习中心 
	function fillTable_TableYearMonth(msg) {
		var str = '[{"Title1": "网院", "Title2": "日期", "Title3": "本月报读学员数", "Title4": "上月报读学员数", "Title5": "环比"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].DIM_CODE_NAME+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].CREATED_DT+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].COUNT_THISMONTH+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].COUNT_BEFOREMONTH+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].STUDENT_PER+'%"},';	
			}	
		}			
		str = (str.substring(0,str.length-1))+']';	
		fillData(setPara_TableYearMonth,str,eval("currentCount_" + setPara_TableYearMonth),eval("pageSize_" + setPara_TableYearMonth),totalCount);
	};			
		
</script>
<!-- Tab 切换 -->
<!-- <script src="/basequery-web/static/plugins/jQueryUI/jquery-ui.min.js"></script>-->
<script>
	$(function($) {
		$('.tabList > li').on('click',function(){
			var index=$(this).index();
			switch(index){
				case 0:
					$("#container-TableYear").show();
					$("#container-TableYearMonth").hide();
					break;
				case 1:
					$("#container-TableYear").hide();
					$("#container-TableYearMonth").show();
					break;
			};
			$(this).siblings('li').children('a').removeClass('on');
			$(this).children('a').addClass('on');
			$(this).parents('.tabList').next('.tabBox').children('.tbCont').eq(index).css({"height":"auto"}).siblings().css({"height":"0"});
			return false;
		});
	});
</script>
</body>
</html>
