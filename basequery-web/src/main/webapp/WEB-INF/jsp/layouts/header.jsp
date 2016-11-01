<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Left side column. contains the logo and sidebar -->
  <header class="main-header"> <a href="#" class="logo">
  <script>
	$(document).ready(function(){			
				//返回顶部按钮动作
				$("#leftsead a").hover(function(){
					if($(this).prop("className")=="youhui"){
						$(this).children("img.hides").show();
					}else{
						$(this).children("img.hides").show();
						$(this).children("img.shows").hide();
						$(this).children("img.hides").animate({marginRight:'0px'},'slow'); 
					}
				},function(){ 
					if($(this).prop("className")=="youhui"){
						$(this).children("img.hides").hide('slow');
					}else{
						$(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
					}
				});
				$("#top_btn").click(function(){
					if(scroll=="off") return;
						$("html,body").animate({scrollTop: 0}, 300);
					}
				);		
			}
		);	
  </script>
    <div class="logo-wrap"><img src="<%=request.getContextPath() %>/static/dist/img/images/eenet_standard_logo.png"></div>
    <span class="logo-mini"><b>管理员</b></span> <span class="logo-lg"><b>远程教育数据中心</b></span> </a>
    <nav class="navbar navbar-static-top" role="navigation"> <a href="<%=request.getContextPath() %>/static/#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">首页</span> </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Notifications: style can be found in dropdown.less --> 
          <!-- Messages: style can be found in dropdown.less-->
          <li class="first-level-wrap">
            <ul class="first-level-menu">
		              <li data-id="1">学习中心</li>
		              <!-- 
		              <li data-id="2">教学资源查询</li>
		              <li data-id="3">产品平台查询</li>
		               -->
		              <li data-id="4">市场销售</li>
            </ul>
            <div class="dropdown operion-more-menu">
            <!-- 
            	<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 更多 <i class="fa fa-fw fa-caret-down"></i> </a>
               --> 
              <ul class="dropdown-menu">
                <li data-id="1"> <a role="menuitem" href="#">学习中心</a>
                  <ul class="menu-temp hide">
                    <li class="header">学习中心</li>
                    <li class="treeview"> <a href="#"> <i class="fa fa-search"></i> <span>数据详情查询</span> <i class="fa fa-angle-left pull-right"></i> </a>
		                   <ul class="treeview-menu menu-open" style="display: none;">
				            <li><a href="<%=request.getContextPath() %>/lcreserveorder/query"><i class="fa fa-dashboard"></i>预报读信息</a></li>
				            <li><a href="<%=request.getContextPath() %>/lcreservefollow/query"><i class="fa fa-mortar-board"></i>预报读跟踪</a></li>
				            <li><a href="<%=request.getContextPath() %>/lcorderinfo/query"><i class="fa fa-cubes"></i>订单报读信息</a></li>
				            <li><a href="<%=request.getContextPath() %>/lcstudent/query"><i class="fa fa-male"></i>学员信息</a></li>
				          </ul>
                    </li>
                    <li class="treeview"> <a href="#"> <i class="fa fa-search"></i> <span>主题分析数据</span> <i class="fa fa-angle-left pull-right"></i> </a>
		                   <ul class="treeview-menu menu-open" style="display: none;">
				            <li class="treeview"> <a href="<%=request.getContextPath() %>/getFunnel"> <i class="fa fa-cubes"></i> <span>学员漏斗分析</span> <i class="fa fa-angle-left pull-right"></i> </a>
                    		</li>                   		
				          </ul>
                    </li>
                     <li class="treeview">
			          <a href="#">
			            <i class="fa fa-dashboard"></i> <span>权限管理</span>
			              <i class="fa fa-angle-left pull-right"></i>
			          </a>
			          <ul class="treeview-menu">
			            <li>
			              <a href="#"><i class="fa fa-dashboard"></i>数据权限管理
			                  <i class="fa fa-angle-left pull-right"></i>
			              </a>
			              <ul class="treeview-menu">

			               <!--  <li><a href="#"><i class="fa fa-circle-o"></i>账号管理</a></li> -->
			                <li><a href="<%=request.getContextPath() %>/userList"><i class="fa fa-user"></i>用户管理</a></li>
			              </ul>
			            </li>
			            <li>
			              <a href="#"><i class="fa fa-dashboard"></i>功能权限管理
			                  <i class="fa fa-angle-left pull-right"></i>
			              </a>
			              <ul class="treeview-menu">
			                <li><a href="#"><i class="fa fa-circle-o"></i>授权管理</a></li>
			                <li><a href="#"><i class="fa fa-circle-o"></i>菜单管理</a></li>
			                <li><a href="#"><i class="fa fa-circle-o"></i>角色管理</a></li>
			              </ul>
			            </li>
			          </ul>
			        </li>
                  </ul>
                </li>
                <%--
                <li data-id="2"> <a role="menuitem" href="#">教学资源查询</a>
                  <ul class="menu-temp hide">
                    <li class="header">教学资源查询</li>
                  </ul>
                </li>
                <li data-id="3"> <a role="menuitem" href="#">产品平台查询</a>
                  <ul class="menu-temp hide">
                    <li class="header">产品平台查询</li>
                  </ul>
                </li>
                 --%>
                <li data-id="4"> <a role="menuitem" href="#">市场销售</a>
                  <ul class="menu-temp hide">
                    <li class="header">市场销售</li>
                    <li class="treeview"> <a href="#"> <i class="fa fa-search"></i> <span>数据详情查询</span> <i class="fa fa-angle-left pull-right"></i> </a>
		                   <ul class="treeview-menu menu-open" style="display: none;">
				            <li><a href="<%=request.getContextPath() %>/salecustomer/query"><i class="fa fa-sellsy"></i>客户详细信息</a></li>
				            <li><a href="<%=request.getContextPath() %>/salecustomerfollow/query"><i class="fa fa-user"></i>客户跟进信息</a></li>
				          </ul>
                    </li>
                    <li class="treeview"> <a href="#"> <i class="fa fa-search"></i> <span>主题分析数据</span> <i class="fa fa-angle-left pull-right"></i> </a>
		                   <ul class="treeview-menu menu-open" style="display: none;">
				            <li class="treeview"> <a href="<%=request.getContextPath() %>/getCompanyFunnel"> <i class="fa fa-cubes"></i> <span>客户漏斗分析</span> <i class="fa fa-angle-left pull-right"></i> </a>
                    		</li>                    		
				          </ul>
                    </li>                    
                  </ul>
                </li>
                
              </ul>
            </div>
          </li>
          <%-- 
          <li class="dropdown messages-menu"> <a href="<%=request.getContextPath() %>/static/#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span class="label label-success">4</span> </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li> 
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message --> 
                    <a href="<%=request.getContextPath() %>/static/#">
                    <div class="pull-left"> <img src="<%=request.getContextPath() %>/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> </div>
                    <h4> Support Team <small><i class="fa fa-clock-o"></i> 5 mins</small> </h4>
                    <p>Why not buy a new awesome theme?</p>
                    </a> </li>
                  <!-- end message -->
                  <li> <a href="<%=request.getContextPath() %>/static/#">
                    <div class="pull-left"> <img src="<%=request.getContextPath() %>/static/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"> </div>
                    <h4> AdminLTE Design Team <small><i class="fa fa-clock-o"></i> 2 hours</small> </h4>
                    <p>Why not buy a new awesome theme?</p>
                    </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#">
                    <div class="pull-left"> <img src="<%=request.getContextPath() %>/static/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image"> </div>
                    <h4> Developers <small><i class="fa fa-clock-o"></i> Today</small> </h4>
                    <p>Why not buy a new awesome theme?</p>
                    </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#">
                    <div class="pull-left"> <img src="<%=request.getContextPath() %>/static/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"> </div>
                    <h4> Sales Department <small><i class="fa fa-clock-o"></i> Yesterday</small> </h4>
                    <p>Why not buy a new awesome theme?</p>
                    </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#">
                    <div class="pull-left"> <img src="<%=request.getContextPath() %>/static/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image"> </div>
                    <h4> Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small> </h4>
                    <p>Why not buy a new awesome theme?</p>
                    </a> </li>
                </ul>
              </li>
              <li class="footer"><a href="<%=request.getContextPath() %>/static/#">See All Messages</a></li>
            </ul>
          </li>
         
          <li class="dropdown notifications-menu"> <a href="<%=request.getContextPath() %>/static/#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span class="label label-warning">10</span> </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li> 
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li> <a href="<%=request.getContextPath() %>/static/#"> <i class="fa fa-users text-aqua"></i> 5 new members joined today </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#"> <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#"> <i class="fa fa-users text-red"></i> 5 new members joined </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#"> <i class="fa fa-shopping-cart text-green"></i> 25 sales made </a> </li>
                  <li> <a href="<%=request.getContextPath() %>/static/#"> <i class="fa fa-user text-red"></i> You changed your username </a> </li>
                </ul>
              </li>
              <li class="footer"><a href="<%=request.getContextPath() %>/static/#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu"> <a href="<%=request.getContextPath() %>/static/#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span class="label label-danger">9</span> </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li> 
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item --> 
                    <a href="<%=request.getContextPath() %>/static/#">
                    <h3> Design some buttons <small class="pull-right">20%</small> </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"> <span class="sr-only">20% Complete</span> </div>
                    </div>
                    </a> </li>
                  <!-- end task item -->
                  <li><!-- Task item --> 
                    <a href="<%=request.getContextPath() %>/static/#">
                    <h3> Create a nice theme <small class="pull-right">40%</small> </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"> <span class="sr-only">40% Complete</span> </div>
                    </div>
                    </a> </li>
                  <!-- end task item -->
                  <li><!-- Task item --> 
                    <a href="<%=request.getContextPath() %>/static/#">
                    <h3> Some task I need to do <small class="pull-right">60%</small> </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"> <span class="sr-only">60% Complete</span> </div>
                    </div>
                    </a> </li>
                  <!-- end task item -->
                  <li><!-- Task item --> 
                    <a href="<%=request.getContextPath() %>/static/#">
                    <h3> Make beautiful transitions <small class="pull-right">80%</small> </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"> <span class="sr-only">80% Complete</span> </div>
                    </div>
                    </a> </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer"> <a href="<%=request.getContextPath() %>/static/#">View all tasks</a> </li>
            </ul>
          </li>
           --%>
          <li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">
							<c:if test="${empty adminUserLoginInfo.userInfo.cardPhoto}">
			              		<img src="<%=request.getContextPath() %>/static/dist/img/images/user-placehoder.png" 	class="user-image" alt="User Image">
			              	</c:if>
			              	<c:if test="${not empty adminUserLoginInfo.userInfo.cardPhoto}">
			              		<img src="${adminUserLoginInfo.userInfo.cardPhoto }" 	class="user-image" alt="User Image">
			              	</c:if>
							<span class="hidden-xs">${adminUserLoginInfo.userInfo.name}</span> </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
              	<c:if test="${empty adminUserLoginInfo.userInfo.cardPhoto}">
              		<img src="<%=request.getContextPath() %>/static/dist/img/images/user-placehoder.png" 	class="img-circle" alt="User Image">
              	</c:if>
              	<c:if test="${not empty adminUserLoginInfo.userInfo.cardPhoto}">
              		<img src="${adminUserLoginInfo.userInfo.cardPhoto }" 	class="img-circle" alt="User Image">
              	</c:if>
                <p> 职位 <small>简介</small> </p>
              </li>
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left"> <a href="#" class="btn btn-default btn-flat">我的资料</a> </div>
                <div class="pull-right"> <a href="<%=request.getContextPath() %>/logout" class="btn btn-default btn-flat">退出</a> </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button --> 
          <!-- <li><a href="<%=request.getContextPath() %>/static/#" data-toggle="control-sidebar"> <i
							class="fa fa-gears"></i>
					</a></li> -->
        </ul>
      </div>

    </nav>
  </header>