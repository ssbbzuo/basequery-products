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
<script type="text/javascript"  src="<%=request.getContextPath()%>/static/dist/js/area.js"></script>
</head>
<body class="inner-page-body">
	<section class="content">
		<div class="box">
			<div class="panel-heading-title">
				<span class="pht-span">学员详情</span>
			</div>
			<div class="panel-body">
				<table id="dtable" class="table table-bordered table-striped table-container margin-bottom-none">
			      <thead>
			        <tr>
			          <th>学员</th>
			          <th>手机号</th>
			          <th>身份证</th>
			          <th>订单号</th>
			          <th>学习中心</th>
			          <th>院校</th>
			          <th>报读专业</th>
			          <th>更新时间</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr>
			          <td>梁晓婷</td>
			          <td>13725278090</td>
			          <td>440181199809031845</td>
			          <td>1999087732648</td>
			          <td>领航学习中心</td>
			          <td>国家开放大学（广州）实验学院</td>
			          <td>工商管理（专升本）</td>
			          <td>2017-01-01</td>
			        </tr>
			      </tbody>
			      </table>
			</div>
		</div>
		<div class="box margin-bottom-none">
			<div class="panel-heading-title rel">
				<span class="pht-span">状态详情</span>
                <button type="button" class="btn btn-default drop-down-all">全部展开 ▾</button>
			</div>
			<div class="panel-body">
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 咨询
					</div>
					<div class="zt-tab">
						<table class="table table-bordered table-striped table-container margin-bottom-none">
					      <thead>
					        <tr>
					          <th>咨询时间</th>
					          <th>来源</th>
					          <th>跟进类型</th>
					          <th>跟进状态</th>
					          <th>备注信息</th>
					          <th>跟进人信息</th>
					        </tr>
					      </thead>
					      <tbody>
					        <tr>
					          <td>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          </td>
					          <td>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          </td>
					          <td>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          </td>
					          <td>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          </td>
					          <td>
					          	<p>学员希望报读大专学历，但对课程有疑问</p>
					          	<p>回访学员，学员表示需要继续了解才报读</p>
					          	<p>学员有较强报读意愿，近期报读</p>
					          </td>
					          <td>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          </td>
					        </tr>
					      </tbody>
					    </table>
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 报读
					</div>
					<div class="zt-tab">
						<table class="table table-bordered table-striped table-container margin-bottom-none">
					      <thead>
					        <tr>
					          <th>咨询时间</th>
					          <th>来源</th>
					          <th>跟进类型</th>
					          <th>跟进状态</th>
					          <th>备注信息</th>
					          <th>跟进人信息</th>
					        </tr>
					      </thead>
					      <tbody>
					        <tr>
					          <td>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          </td>
					          <td>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          </td>
					          <td>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          </td>
					          <td>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          </td>
					          <td>
					          	<p>学员希望报读大专学历，但对课程有疑问</p>
					          	<p>回访学员，学员表示需要继续了解才报读</p>
					          	<p>学员有较强报读意愿，近期报读</p>
					          </td>
					          <td>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          </td>
					        </tr>
					      </tbody>
					    </table>
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 优惠
					</div>
					<div class="zt-tab">
						<table class="table table-bordered table-striped table-container margin-bottom-none">
					      <thead>
					        <tr>
					          <th>咨询时间</th>
					          <th>来源</th>
					          <th>跟进类型</th>
					          <th>跟进状态</th>
					          <th>备注信息</th>
					          <th>跟进人信息</th>
					        </tr>
					      </thead>
					      <tbody>
					        <tr>
					          <td>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          	<p>2017-01-01 12:00</p>
					          </td>
					          <td>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          	<p>广东职工教育网</p>
					          </td>
					          <td>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          	<p>主动回访</p>
					          </td>
					          <td>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          	<p>已跟进</p>
					          </td>
					          <td>
					          	<p>学员希望报读大专学历，但对课程有疑问</p>
					          	<p>回访学员，学员表示需要继续了解才报读</p>
					          	<p>学员有较强报读意愿，近期报读</p>
					          </td>
					          <td>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          	<p>张三丰 （133448888888）</p>
					          </td>
					        </tr>
					      </tbody>
					    </table>
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 缴费
					</div>
					<div class="zt-tab">
						缴费
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 入读
					</div>
					<div class="zt-tab">
						入读
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 补贴
					</div>
					<div class="zt-tab">
						补贴
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 学籍
					</div>
					<div class="zt-tab">
						学籍
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 学习
					</div>
					<div class="zt-tab">
						学习
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 考试
					</div>
					<div class="zt-tab">
						考试
				    </div>
				</div>
				<div class="zt-list">
					<div class="zt-title">
						<span> ▾</span> 毕业
					</div>
					<div class="zt-tab">
						毕业
				    </div>
				</div>
			</div>
            <ul class="zt-nav">
                <li>咨询</li>
                <li>报读</li>
                <li>优惠</li>
                <li>缴费</li>
                <li>入读</li>
                <li>补贴</li>
                <li>学籍</li>
                <li>学习</li>
                <li>考试</li>
                <li>毕业</li>
            </ul>
		</div>
	</section>
	<footer class="site-footer">
		<span>远程教育数据中心</span>
	</footer>
</body>
<!-- css 、js -->
<style type="text/css">
.zt-list{padding: 5px 0;}
.zt-title{padding: 10px;background: #dfdfdf;color: #333;cursor: pointer;}
.zt-title:hover{opacity: 0.9;filter:alpha(opacity=90);}
.zt-tab{display: none;}
.rel{position: relative;}
.drop-down-all{position: absolute;right: 15px;top: 3px;}
.zt-nav{width: 46px;position:fixed;right: 30px;top:50%;line-height: 34px;text-align: center;color: #222d32;list-style: none;padding: 0;margin:0;margin-top: -175px;}
.zt-nav li{height: 34px;background-color: #f4f4f4;margin-bottom: 1px;border:1px solid #ccc;border-radius: 2px;cursor:pointer;}
.zt-nav li:hover,.zt-nav li.on{background: #30a5ff;border:1px solid #30a5ff;color: #fff;}
</style>
<script type="text/javascript">
   $(document).ready(function(){
   		// 单个展开下拉
		$('.zt-title').click(function(){
			var $this = $(this),
				$tab = $this.next(),
                index = $this.parent().index(),
                $navli = $('.zt-nav li').eq(index);
			if($tab.is(':visible')){
				$tab.slideUp();
				$this.children('span').html(' ▾');
                $navli.removeClass('on');
			}else{
				$this.parent().siblings().children('.zt-tab').slideUp();
				$this.parent().siblings().children('.zt-title').children('span').html(' ▾');
				$tab.slideDown();
				$this.children('span').html('▴');
                $navli.addClass('on').siblings().removeClass('on');
			}
		});
        // 全部展开下拉
        var t = 0;
        $('.drop-down-all').click(function(){
            if(!t){
                $('.zt-tab').slideDown();
                $('.zt-title').children('span').html('▴');
                $(this).html('收起展开 ▴');
                $('.zt-nav li').addClass('on');
                t = 1;
            }else{
                $('.zt-tab').slideUp();
                $('.zt-title').children('span').html(' ▾');
                $(this).html('全部展开  ▾');
                $('.zt-nav li').removeClass('on');
                t = 0;
            }
        });
        // 右侧菜单
        $('.zt-nav li').click(function(){
            var $this = $(this),
                index = $this.index(),
                $ztlist = $('.zt-list'),
                $tab = $ztlist.eq(index).children('.zt-tab'),
                $til = $ztlist.eq(index).children('.zt-title');
            if($tab.is(':visible')){
                $tab.slideUp();
                $til.children('span').html(' ▾');
                $this.removeClass('on');
            }else{
                $tab.parent().siblings().children('.zt-tab').slideUp();
                $tab.parent().siblings().children('.zt-title').children('span').html(' ▾');

                $tab.slideDown();
                $til.children('span').html('▴');
                $this.addClass('on').siblings().removeClass('on');
                $('html,body').animate({scrollTop:$til.offset().top},400);
            }
        });

  });
</script>

</html>
