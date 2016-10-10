<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>远程教育数据中心</title>
<jsp:include page="/WEB-INF/jsp/common/jslibs.jsp" />
</head>
<body>	
	<section class="content">
		<div id="charts" class="box">
			<div class="box-body"">
				<div id="main1" style="width: 50%; min-height: 300px; float: left;"></div>
				<div id="main2" style="width: 50%; min-height: 300px; float: right;"></div>			
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
			<div class="pageing-list" style="cursor: pointer">
				<div class="dataTables_paginate paging_simple_numbers">
					<ul class="pagination">
						<li id="firstPage"><a>首页</a></li>
						<li class="paginate_button previous" id="previous"><a>上一页</a></li>
						<li class="paginate_button next" id="next"><a>下一页</a></li>
						<li id="last"><a>尾页</a></li>
					</ul>
				</div>
			</div>
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
	
	function isNull(data){ 
		return (data == "" || data == undefined || data == null) ? " " : data; 
	}
	
	$("#search").click(function(){
		pageSize = 10;//每页行数 
		currentCount = 0;//当前条数 
		totalCount = 0;//总条数 
		
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
		});	

		
		
	    
	  //==================================================================
					
		myChart02.setOption(option02 = { title : {
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
        });
        
      //==================================================================
    	
	  //=============================================================	
		//图表自适应屏幕
		setTimeout(function() {
			window.onresize = function() {
				myChart01.resize();
				myChart02.resize();				
			}
		}, 200)
		//=============================================================	
		queryForPages();
	   			
		});
	
	//首页 
	$("#firstPage").click(function(){ 
		currentCount = 0; 
		queryForPages(); 
	}); 
	//上一页 
	$("#previous").click(function(){ 
		if((currentCount-pageSize)>=0){ 
			currentCount -= pageSize ;
		} 
		queryForPages(); 
	}); 
	//下一页 
	$("#next").click(function(){ 
	if((currentCount+pageSize)<totalCount){ 
		currentCount += pageSize ; 
	} 
		queryForPages(); 
	}); 
	//尾页 
	$("#last").click(function(){ 
		currentCount = totalCount - (totalCount % pageSize); 
		queryForPages(); 
	}); 
	//加载表格	
	function queryForPages(){	
		$.ajax({
			//解析从后台返回的json数据  
			url : "<%=request.getContextPath()%>/ajax",
			type : "post",
			data : {
				"year" : $('#yearmemo').val(),
				"country" : $('#countrymemo').val(),
				"currentCount" : currentCount,
				"pageSize" : pageSize
			},
			success : function(msg) {
				var info = eval("(" + msg + ")") ;
				fillTable(info);
			}
		});		
	};
	//填充数据
	function fillTable(info) {
		var htmlstr = "";
		for(var o in info){		
			if(o == "totalCount"){
				for(var i in info[o]){					
					totalCount = info[o][i].total;
				}
			}else{				
				for ( var i in info[o]) {
					htmlstr += "<tr><td>" + info[o][i].number + "</td>" + "<td>"
							+ info[o][i].age + "</td>" + "<td>" + info[o][i].peoples
							+ "</td>" + "<td>" + info[o][i].country + "</td>"
							+ "<td>" + info[o][i].year + "</td></tr>";
				}		
			}
		}		
		
		document.getElementById("t_body").innerHTML = htmlstr;
	}
	

	$(function() {
		//加载图表和表格数据
		$('#search').trigger('click');		
	});
	
</script>
</html>
