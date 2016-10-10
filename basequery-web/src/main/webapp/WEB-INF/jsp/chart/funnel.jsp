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

	<div class="box">
		<div class="box-body">
			<div style="display: none">
				<button id="search" type="button" class="btn btn-primary">搜索</button>
			</div>
			<div id="main" style="height: 400px; width: 33%; float: left;"></div>
			<div id="main3" style="height: 400px; width: 33%; float: right;"></div>
			<div id="main1" style="height: 400px; width: 34%; float: right;"></div>
		</div>
	</div>
	<div class="box">
		<div class="box-body">
			<div id="container">
				<!--Horizontal Tab-->
				<div id="parentHorizontalTab">
					<ul class="resp-tabs-list hor_1">
						<li>区域</li>
						<li>规模</li>
						<li>区域</li>
						<li>团队</li>
						<li>个人</li>
					</ul>
					<div class="resp-tabs-container hor_1">
						<div>
							<table class="table table-bordered table-striped table-container">
								<thead id="t_head">
									<tr>
										<th>类型</th>
										<th>数量</th>
										<th>百分比</th>
									</tr>
								</thead>
								<tbody id="t_body">
									<!-- ajax填充列表 -->
								</tbody>
							</table>
						</div>
						<div>
							<table class="table table-bordered table-striped table-container">
								<thead id="t_head">
									<tr>
										<th>类型</th>
										<th>数量</th>
									</tr>
								</thead>
								<tbody id="t_body_sec">
									<!-- ajax填充列表 -->
								</tbody>
							</table>
						</div>
						<div>
							<table class="table table-bordered table-striped table-container">
								<thead id="t_head">
									<tr>
										<th>类型</th>
										<th>百分比</th>
									</tr>
								</thead>
								<tbody id="t_body_thir">
									<!-- ajax填充列表 -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="nested-tabInfo">
					当前选择: <span class="tabName"></span>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />

	<script type="text/javascript">		
		var name = "";
		var myChart1 = echarts.init(document.getElementById('main1'), 'macarons');
		var myChart = echarts.init(document.getElementById('main'), 'macarons');
		var myChart03 = echarts.init(document.getElementById('main3'), 'macarons');

		function gauge() {
			//========================================================================
			$.ajax({
				//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/gauge",
			type : "post",
			data : {
				"memo" : name
			},
			success : function(msg) {
				var info = eval("(" + msg + ")");
				
				myChart1.setOption(option = {
						tooltip : {
					        formatter: "{a} <br/>{b} : {c}%"
					    },
					    toolbox: {
					        feature: {
					            restore: {},
					            saveAsImage: {}
					        }
					    },
					    series: [
					        {
					            name: '业务指标',
					            type: 'gauge',
					            detail: {formatter:'{value}%'},
					            data: eval("("+buildGauge(info)+ ")")
					        }
					    ]
				});				
			}
		});
	};
	
	$("#search").click(function(){		
		
		//========================================================================			
		
		
		$.ajax({
			//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/search",
			type : "post",
			success : function(msg) {
				var info = eval("(" + msg + ")");
				
				myChart.setOption(option = {			
					    tooltip: {
					        trigger: 'item',
					        formatter: "{b} : {c}"
					    },
					    toolbox: {		    			    
					        orient:'vertical',
					        feature: {
					            dataView: {readOnly: false},
					            restore: {},
					            saveAsImage: {}
					        }
					    },
					    legend: {
					        data: ['待合作','产单','同意合作','执行计划','确认合作']
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
					            sort: 'descending',
					            gap: 10,
					            label: {
					                normal: {
					                    show: true,
					                    formatter: "{b} : {c}"
					                },
					                emphasis: {
					                    textStyle: {
					                        fontSize: 20
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
					            data: eval("("+buildFunnel(info)+ ")")
					        }
					    ]
					});
				}
			});		
			
		//========================================================================		
		myChart03.setOption(option03 = { 
		    tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
		    legend: {
		        data:['意向', '成功', '流失']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    yAxis : [
		        {
		            type : 'category',
		            axisTick : {show: false},
		            data : ['产单','执行计划','确认合作','同意合作','待合作']
		        }
		    ],
		    series : [
		        {
		            name:'成功',
		            type:'bar',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'inside'
		                }
		            },
		            data:[500, 1000, 2000, 3000,5000]
		        },
		        {
		            name:'意向',
		            type:'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true
		                }
		            },
		            data:[1000, 2000, 3000, 5000,5000]
		        },
		        {
		            name:'流失',
		            type:'bar',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'left'
		                }
		            },
		            data:[-500, -1000, -1000, -2000,0]
		        }
		    ]
        });//myChart03.setOption
		//========================================================================	
			
			
		//加载表格数据			
		$.ajax({
			//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/search",
								type : "post",
								success : function(msg) {
									var info = eval("(" + msg + ")");
									fillTable(info);
								}
							});
		//========================================================================			
		
		setTimeout(function() {
			window.onresize = function() {
				myChart.resize();
				myChart1.resize();
				myChart03.resize();
			}
		}, 200);

		myChart.on('click',function(params) {
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
			document.getElementById("t_body").innerHTML = htmlstr;
			document.getElementById("t_body_sec").innerHTML = htmlstr;
			document.getElementById("t_body_thir").innerHTML = htmlstr;
			gauge();
		});
		gauge();
	});

		$(document).ready(function() {
			$("#search").triggerHandler("click");
			
	        //Horizontal Tab
	        $('#parentHorizontalTab').easyResponsiveTabs({
	            type: 'default', //Types: default, vertical, accordion
	            width: 'auto', //auto or any width like 600px
	            fit: true, // 100% fit in a container
	            tabidentify: 'hor_1', // The tab groups identifier
	            activate: function(event) { // Callback function if tab is switched
	                var $tab = $(this);
	                var $info = $('#nested-tabInfo');
	                var $name = $('span', $info);
	                $name.text($tab.text());
	                $info.show();
	            }
	        });
			
		});
		//填充表格数据
		function fillTable(info) {
			var htmlstr = "";
			for ( var o in info) {

				htmlstr += "<tr><td>" + info[o]["memo"] + "</td>" + "<td>"
						+ info[o]["number"] + "</td>" + "<td>"
						+ info[o]["percent"] + "</td></tr>";

			}

			document.getElementById("t_body").innerHTML = htmlstr;
			document.getElementById("t_body_sec").innerHTML = htmlstr;
			document.getElementById("t_body_thir").innerHTML = htmlstr;
		}
		//生成漏斗数据
		function buildFunnel(info) {
			var str = "[";
			for ( var o in info) {
				str += "{value:" + info[o]["number"] + ",name:'"
						+ info[o]["memo"] + "'},";
			}

			return str.substring(0, str.length - 1) + "]";
		}

		//生成仪表盘数据
		function buildGauge(info) {
			var str = "[";
			for ( var o in info) {
				if (o == "0") {
					str += "{value:" + info[o]["value"] + ",name:'"
							+ info[o]["name"] + "'},";
				}
			}
			return str.substring(0, str.length - 1) + "]";
		}
	</script>
</body>

</html>
