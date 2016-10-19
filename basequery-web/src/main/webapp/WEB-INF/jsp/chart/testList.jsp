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
	<div class="col-lg-12 main">			
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">图表1</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="main-chart" id="main1" ></div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->			

		<div class="row">
			<div class="col-md-6">
				<div  id = "piechart" class="panel panel-default" >
					<div class="panel-heading">图表2</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="chart" id="main2" ></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">图表3</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="chart" id="main3"></div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->			

		<div class="box" >
			<div class="box-body">
				<div class="col-md-12">
					<div class="form-group">
						<div class="col-md-4 grid_box1">		
							<input id="yearmemo" type="text" class="form-control"  placeholder="年度">	
						</div>				
						<div class="col-md-4 grid_box1">				
								<input id="countrymemo" type="text" class="form-control"  placeholder="国家">						
						</div>
						<div class="col-md-3">
							<button id="search" type="button" class="btn btn-primary"><i class="fa fa-search"></i>  搜索</button>
							<button id="reset" type="button" class="btn btn-default"><i class="fa fa-refresh"></i>  清空</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		
		<div class="box">
			<div id="jsontotable" class="box-body">
				<!-- 加载表格 -->
			</div>
			<div id="pageTool"> <!-- 加载分页控件 --> </div>			
		</div>		
		
		<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
	
	</div>

</body>
<script>

	//清空按钮
	$("#reset").click(function(){
		$("#yearmemo").val("");
		$("#countrymemo").val("");
	});

	var worldMapContainer1 = document.getElementById('main1');
	var worldMapContainer2 = document.getElementById('main2');
	var worldMapContainer3 = document.getElementById('main3');
	
	//用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
	var resizeWorldMapContainer = function () {		    
	    worldMapContainer1.style.height = $(window).height()*0.3+'px';
	    worldMapContainer2.style.height = $(window).height()*0.3+'px';
	    worldMapContainer3.style.height = $(window).height()*0.3+'px';
	};
	//设置容器高宽
	resizeWorldMapContainer();	
	
	
	var myChart01 = echarts.init(worldMapContainer1);
	var myChart02 = echarts.init(worldMapContainer2);
	var myChart03 = echarts.init(worldMapContainer3);

	var pageSize = 10;//每页行数 
	var currentCount = 0;//当前条数 
	var totalCount = 0;//总条数 

	
	$("#search").click(function(){
		pageSize = 10;//每页行数 
		currentCount = 0;//当前条数 
		
		//==================================================================
		$.ajax({
			//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/test02",
			type : "post",
			contentType: "application/x-www-form-urlencoded; charset=utf-8", 
			success : function(msg) {
			//==================================================================
				
			 	var name = 'guangdong';

			    $.get('<%=request.getContextPath()%>/static/plugins/echarts/map/' + name + '.json', function (geoJson) {

			        echarts.registerMap(name, geoJson);

			        myChart01.setOption(option01 = {
			        		
		        		visualMap: {
		                    min: 800,
		                    max: 50000,
		                    text:['High','Low'],
		                    realtime: false,
		                    calculable: false,
		                    inRange: {
		                        color: ['lightskyblue','yellow', 'orangered']
		                    }
		                },	           
			            series: [
			                {
			                    type: 'map',
			                    mapType: name,
			                    label: {
			                        emphasis: {
			                            textStyle: {
			                                color: '#000'
			                            }
			                        }
			                    },
			                    itemStyle: {
			                        normal: {
			                            borderColor: '#000'	                            
			                        },
			                        emphasis: {
			                            areaColor: '#389BB7',
			                            borderWidth: 0
			                        }
			                    },
			                    animation: false,
			                    data:eval("(" + msg + ")")
			                }
			            ]
			        });	        
			    });
			}
		});	//ajax

		//==================================================================	
		myChart03.setOption(option03 = { 
		    title : {
		        text: '某站点用户访问来源',
		        subtext: '纯属虚构',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
		    },
		    series : [
		        {
		            name: '访问来源',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:[
		                {value:335, name:'直接访问'},
		                {value:310, name:'邮件营销'},
		                {value:234, name:'联盟广告'},
		                {value:135, name:'视频广告'},
		                {value:1548, name:'搜索引擎'}
		            ],
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            }
		        }
		    ]
        });//myChart03.setOption		
	    
		//==================================================================
					
		myChart02.setOption(option02 = { 
			title : {			
	            text: '未来一周气温变化',
	            subtext: '纯属虚构'
	        },
	        tooltip : {
	            trigger: 'axis'
	        },
	        legend: {
	            data:['最高气温','最低气温']
	        },
	        toolbox: {
	            show : true,
	            feature : {
	                mark : {show: true},
	                dataView : {show: true, readOnly: false},
	                magicType : {show: true, type: ['line', 'bar']},
	                restore : {show: true},
	                saveAsImage : {show: true}
	            }
	        },
	        calculable : true,
	        xAxis : [
	            {
	                type : 'category',
	                boundaryGap : false,
	                data : ['周一','周二','周三','周四','周五','周六','周日']
	            }
	        ],
	        yAxis : [
	            {
	                type : 'value',
	                axisLabel : {
	                    formatter: '{value} °C'
	                }
	            }
	        ],
	        series : [
	            {
	                name:'最高气温',
	                type:'line',
	                data:[11, 11, 15, 13, 12, 13, 10],
	                markPoint : {
	                    data : [
	                        {type : 'max', name: '最大值'},
	                        {type : 'min', name: '最小值'}
	                    ]
	                },
	                markLine : {
	                    data : [
	                        {type : 'average', name: '平均值'}
	                    ]
	                }
	            },
	            {
	                name:'最低气温',
	                type:'line',
	                data:[1, -2, 2, 5, 3, 2, 0],
	                markPoint : {
	                    data : [
	                        {name : '周最低', value : -2, xAxis: 1, yAxis: -1.5}
	                    ]
	                },
	                markLine : {
	                    data : [
	                        {type : 'average', name : '平均值'}
	                    ]
	                }
	            }
	        ]
        });//myChart02.setOption
        
      //==================================================================
    	
	  //=============================================================	
		//图表自适应屏幕
		setTimeout(function() {
			window.onresize = function() {
				myChart01.resize();
				myChart02.resize();
				myChart03.resize();
				
			}
		}, 200)/setTimeout
		//=============================================================	
		queryForPages()			
		});//#search	
	
	//加载表格	
	function queryForPages(){			
		var jsonDate = {
				"year" : $('#yearmemo').val(),
				"country" : $('#countrymemo').val(),
				"currentCount" : currentCount,
				"pageSize" : pageSize
		};		
		$.ajax({
			//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/ajax",
			type : "post",
			contentType:'application/json;charset=UTF-8',
			async: false,
			data : JSON.stringify(jsonDate),
			success : function(msg) {
				console.log(msg);	
				fillTable(msg);
			}//ajax
		});			
		$("div#pageToolbar").remove();
		//添加表格div
		$("div#pageTool").append('<div id="pageToolbar"></div>');
		//加载分页工具
		$('#pageToolbar').Paging({pagesize:pageSize,current:((currentCount/pageSize)+1),count:totalCount,toolbar:true,
			callback:function(page,size,count){
					console.log(arguments);		
					currentCount = ((page-1)*size) ; 
					pageSize = size;
					queryForPages();					
				}	
		});		
	};//queryForPages
	
	//填充数据
	function fillTable(msg) {			
		var str = '[{"Title1": "人数01", "Title2": "平均年龄", "Title3": "人数02","Title4":"国家","Title5":"年份"},';
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {		
				str +='{"Column1":"'+msg[key].test.resultSet[o].number+'",'+
					'"Column2":"'+msg[key].test.resultSet[o].age+'",'+
					'"Column3":"'+msg[key].test.resultSet[o].peoples+'",'+
					'"Column4":"'+msg[key].test.resultSet[o].country+'",'+
					'"Column5":"'+msg[key].test.resultSet[o].year+'"},';	
			}	
		}
		//删除表格数据
		$("div#jsontotable-str").remove();
		//添加表格div
		$("div#jsontotable").append('<div id="jsontotable-str"></div>');
		//生成表格数据
		
		str = (str.substring(0,str.length-1))+']'
		$.jsontotable(str, {
			id: "#jsontotable-str",
			className: "table table-bordered table-striped table-container"
		});
		
	};//fillTable
				
	$(function() {
		//加载表格数据
		queryForPages();

		//加载图表和表格数据
		$('#search').trigger('click');	
		
			
	});//$
	
	

	
</script>
</html>
