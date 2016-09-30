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
	<section class="content">
		<div id="charts" class="box">
			<div class="box-body"">
				<div id="main1" style="width: 33%; min-height: 300px; float: left;"></div>
				<div id="main2" style="width: 33%; min-height: 300px; float: right;"></div>	
				<div id="main3" style="width: 34%; min-height: 300px; float: right;"></div>			
			</div>
		</div>

		<div class="box" style="height: 100px;">
			<div class="box-body">
				<div class="box-footer fr left120" style="border-top: 0;">
					<div>
						<button id="search" type="button" class="btn btn-primary">搜索</button>
					</div>
				</div>
				<div class="form-horizontal oh slide_box">
					<div class="row reset-form-horizontal pad-t15">
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label col-sm-3">年度</label>
								<div class="col-sm-3">
									<input id="yearmemo" type="text" class="form-control">
								</div>
						
								<label class="control-label col-sm-3">国家</label>
								<div class="col-sm-3">
									<input id="countrymemo" type="text" class="form-control">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div id="contactTable" class="box-body"">
				<table class="table table-bordered table-striped table-container">
					<thead id="t_head">
						<tr>
							<th>人数01</th>
							<th>平均年龄</th>
							<th>人数02</th>
							<th>国家</th>
							<th>年份</th>
						</tr>
					</thead>
					<tbody id="t_body">
						<!-- ajax填充列表 -->
					</tbody>
				</table>
			</div>
			<div id="pageToolbar"></div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />
	

</body>
<script>

	var pageSize = 10;//每页行数 
	var currentCount = 0;//当前条数 
	var totalCount = 0;//总条数 
	var myChart01 = echarts.init(document.getElementById('main1'),'macarons');
	var myChart02 = echarts.init(document.getElementById('main2'),'macarons');
	var myChart03 = echarts.init(document.getElementById('main3'),'macarons');

	
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
		queryForPages();
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
	};//queryForPages
	
	//填充数据
	function fillTable(msg) {			
		var htmlstr = "";
		for(var key in msg){	
			totalCount = msg[key].test.count;	
			for ( var o in msg[key].test.resultSet) {
				htmlstr += "<tr><td>" + msg[key].test.resultSet[o].number + "</td>" + "<td>"
						+ msg[key].test.resultSet[o].age + "</td>" + "<td>" + msg[key].test.resultSet[o].peoples
						+ "</td>" + "<td>" + msg[key].test.resultSet[o].country + "</td>"
						+ "<td>" + msg[key].test.resultSet[o].year + "</td></tr>";
			}	
		}
		document.getElementById("t_body").innerHTML = htmlstr;	
	}//fillTable
				
	$(function() {
		//加载表格数据
		queryForPages();

		//加载图表和表格数据
		$('#search').trigger('click');	
		
		//加载分页工具
		$('#pageToolbar').Paging({pagesize:pageSize,count:totalCount,toolbar:true,
			callback:function(page,size,count){
					console.log(arguments);		
					currentCount = ((page-1)*size) ; 
					pageSize = size;
					queryForPages();						
				}	
		});		
	});//$
	
</script>
</html>
