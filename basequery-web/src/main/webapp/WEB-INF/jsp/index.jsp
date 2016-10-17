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
			<div class="col-xs-12 col-md-4 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<li class="fa fa-user fa-4x"></li>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">3695864</div>
							<div class="text-muted">现有学员</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-3">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="fa fa-home fa-4x"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">152369</div>
							<div class="text-muted">现有企业</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<li class="fa fa-user-plus fa-4x"></li>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">326598</div>
							<div class="text-muted">新增学员</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-3">
				<div class="panel panel-red panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<li class="fa fa-plus-circle fa-4x"></li>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">3269</div>
							<div class="text-muted">新增企业</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
					
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"><i class="fa fa-bar-chart-o"></i></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="main-chart" id="main1" ></div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-default" >
					<div class="panel-heading"><i class="fa fa-pie-chart"></i></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="chart" id="main2" ></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading"><i class="fa fa-area-chart"></i></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="chart" id="main3"></div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->			

	
		
	<div class="row">	
	     <div class="col-md-8 span_3">
			  <div class="bs-example1" data-example-id="contextual-table">
			    <table class="table">
			      <thead>
			        <tr>
			          <th>#</th>
			          <th>Column heading</th>
			          <th>Column heading</th>
			          <th>Column heading</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr class="active">
			          <th scope="row">1</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr class="success">
			          <th scope="row">3</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr>
			          <th scope="row">4</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr class="info">
			          <th scope="row">5</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr>
			          <th scope="row">6</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr class="warning">
			          <th scope="row">7</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr>
			          <th scope="row">8</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			        <tr class="danger">
			          <th scope="row">9</th>
			          <td>Column content</td>
			          <td>Column content</td>
			          <td>Column content</td>
			        </tr>
			      </tbody>
			    </table>
			   </div>
		   </div>	
		   
	   <div class="col-md-4 span_4">
		 <div class="col_2">
		  <div class="box_1">
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>学员增长率:</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="92" ><span class="percent">92%</span>
						</div>
					</div>
				</div>
		   </div>
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>企业增长率:</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="65" ><span class="percent">65%</span>
						</div>
					</div>
				</div>
		   </div>
		   <div class="clearfix"> </div>
		 </div>
		 <div class="box_1">
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>课程完成率:</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="56" ><span class="percent">56%</span>
						</div>
					</div>
				</div>
		   </div>
		   <div class="col-md-6 col_1_of_2 span_1_of_2">
 				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>项目完成率:</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="27" ><span class="percent">27%</span>
						</div>
					</div>
				</div>
		   </div>
		   <div class="clearfix"> </div>
		   </div>
		  </div>
		</div>		   
	   </div><!--/.row-->	
	
	<jsp:include page="/WEB-INF/jsp/layouts/footer.jsp" />				
	</div><!--/.main-->
	
<script>

	var worldMapContainer1 = document.getElementById('main1');
	var worldMapContainer2 = document.getElementById('main2');
	var worldMapContainer3 = document.getElementById('main3');

	//用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
	var resizeWorldMapContainer = function () {		    
	    worldMapContainer1.style.height = document.body.clientWidth*0.2+'px';
	    worldMapContainer2.style.height = document.body.clientWidth*0.2+'px';
	    worldMapContainer3.style.height = document.body.clientWidth*0.2+'px';
	};
	
	//设置容器高宽
	resizeWorldMapContainer();	
	
	var myChart01 = echarts.init(worldMapContainer1);
	var myChart02 = echarts.init(worldMapContainer2, 'shine');
	var myChart03 = echarts.init(worldMapContainer3, 'macarons');
	
	myChart01.setOption(option01 = { 
		    title : {
		        text: '某地区蒸发量和降水量',
		        subtext: '纯属虚构'
		    },
		    tooltip : {
		        trigger: 'axis'
		    },
		    legend: {
		        data:['蒸发量','降水量']
		    },
		    toolbox: {
		        show : true,
		        feature : {
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
		            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    series : [
		        {
		            name:'蒸发量',
		            type:'bar',
		            data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
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
		            name:'降水量',
		            type:'bar',
		            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
		            markPoint : {
		                data : [
		                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
		                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
		                ]
		            },
		            markLine : {
		                data : [
		                    {type : 'average', name : '平均值'}
		                ]
		            }
		        }
		    ]
        });//myChart01.setOption	
        
    	myChart02.setOption(option02 = { 
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
            });//myChart02.setOption
            
        	myChart03.setOption(option03 = { 
        		    title: {
        		        text: '堆叠区域图'
        		    },
        		    tooltip : {
        		        trigger: 'axis'
        		    },
        		    legend: {
        		        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
        		    },
        		    toolbox: {
        		        feature: {
        		            saveAsImage: {}
        		        }
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
        		            boundaryGap : false,
        		            data : ['周一','周二','周三','周四','周五','周六','周日']
        		        }
        		    ],
        		    yAxis : [
        		        {
        		            type : 'value'
        		        }
        		    ],
        		    series : [
        		        {
        		            name:'邮件营销',
        		            type:'line',
        		            stack: '总量',
        		            areaStyle: {normal: {}},
        		            data:[120, 132, 101, 134, 90, 230, 210]
        		        },
        		        {
        		            name:'联盟广告',
        		            type:'line',
        		            stack: '总量',
        		            areaStyle: {normal: {}},
        		            data:[220, 182, 191, 234, 290, 330, 310]
        		        },
        		        {
        		            name:'视频广告',
        		            type:'line',
        		            stack: '总量',
        		            areaStyle: {normal: {}},
        		            data:[150, 232, 201, 154, 190, 330, 410]
        		        },
        		        {
        		            name:'直接访问',
        		            type:'line',
        		            stack: '总量',
        		            areaStyle: {normal: {}},
        		            data:[320, 332, 301, 334, 390, 330, 320]
        		        },
        		        {
        		            name:'搜索引擎',
        		            type:'line',
        		            stack: '总量',
        		            label: {
        		                normal: {
        		                    show: true,
        		                    position: 'top'
        		                }
        		            },
        		            areaStyle: {normal: {}},
        		            data:[820, 932, 901, 934, 1290, 1330, 1320]
        		        }
        		    ]
                });//myChart03.setOption            
        
		//图表自适应屏幕
		setTimeout(function() {
			window.onresize = function() {
				resizeWorldMapContainer();
				myChart01.resize();
				myChart02.resize();
				myChart03.resize();
				
			}
		}, 200)//setTimeout        
	
</script>	
</body>
</html>
