
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/3
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>海印体育汇管理平台</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>jsp/myjsp/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<%=basePath%>jsp/myjsp/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>jsp/myjsp/pages/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=basePath%>jsp/myjsp/pages/index.jsp">海印体育汇管理平台</a>
        </div>

       <!--导航头右边的内容 -->
        <ul class="nav navbar-top-links navbar-right">

            <!--导航信息按钮-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>亮哥</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>明天篮球体育馆需要进行地面清洁</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>亮哥</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>明天领导过来视察</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>亮哥</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>明天工资翻倍</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有邮件</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>

            </li>
            <!--导航信息按钮-->


            <!--信息提醒-->

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> 新的评论
                                <span class="pull-right text-muted small">3 分钟之前</span>
                            </div>
                        </a>
                    </li>


                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> 信息的发送
                                <span class="pull-right text-muted small">4 分钟之前</span>
                            </div>
                        </a>
                    </li>

                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">5 分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>

            </li>
            <!--信息提醒-->

            <!--管理员-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>${sessionScope.manager.manager_name}信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 登出</a>
                    </li>
                </ul>

            </li>
            <!--管理员-->
        </ul>


        <div class="navbar-default sidebar" role="navigation">

            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <!--搜索-->
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="搜索...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <!--搜索-->

                    <!--首页-->
                    <li>
                        <a href="<%=basePath%>jsp/myjsp/pages/index.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> 首页</a>
                    </li>

                    <!--场馆情况-->
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 场馆情况<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>venue/get/basketball.do">篮球场</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>venue/get/natatorium.do">游泳场</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>venue/get/badminton.do">羽毛球场</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>venue/get/football.do">足球场</a>
                            </li>
                        </ul>

                    </li>
                    <!--场馆情况-->

                    <!--订单管理-->
                    <li>
                        <a href="<%=basePath%>gym/getmessage.do"><i class="fa fa-table fa-fw"></i> 订单管理</a>
                    </li>
                    <!--订单管理-->

                    <!--活动管理-->
                    <li>
                        <a href="<%=basePath%>activity/get.do"><i class="fa fa-edit fa-fw"></i> 活动管理</a>
                    </li>
                    <!--活动管理-->
                    <!--会员管理-->
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> 会员管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>vip/findAll.do">会员情况</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>vip/discount.do">会员优惠</a>
                            </li>

                        </ul>

                    </li>
                    <!--会员管理-->

                    <!--评论管理-->
                    <li>
                        <a href="<%=basePath%>comment/get.do"><i class="fa fa-wrench fa-fw"></i> 评论管理</a>
                    </li>
                    <!--评论管理-->
                    <!--管理员管理-->
                    <li>
                    <a href="<%=basePath%>manager/get.do"><i class="glyphicon glyphicon-user"></i> 管理员管理</a>
                    </li>
                    <!--管理员管理-->
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">首页</h1>
            </div>

        </div>
    <!--第一行信息-->
    <div class="row">
        <!--信息-->
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-comments fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">26</div>
                            <div>新信息!</div>
                        </div>
                    </div>
                </div>
                <a href="#">
                    <div class="panel-footer">
                        <span class="pull-left">视图</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <!--信息-->
        <!--任务信息-->
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">12</div>
                            <div>新任务！</div>
                        </div>
                    </div>
                </div>
                <a href="#">
                    <div class="panel-footer">
                        <span class="pull-left">视图</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <!--任务信息-->
        <!--订单信息-->
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-shopping-cart fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">124</div>
                            <div>新订单!</div>
                        </div>
                    </div>
                </div>
                <a href="#">
                    <div class="panel-footer">
                        <span class="pull-left">视图</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <!--订单信息-->
        <!--警告信息-->
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-support fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">13</div>
                            <div>警告!</div>
                        </div>
                    </div>
                </div>
                <a href="#">
                    <div class="panel-footer">
                        <span class="pull-left">视图</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <!--警告信息-->
    </div>
        <!--第一行信息-->
        <!--日志报告信息-->
        <div class="row">
            <div class="col-lg-8" >
                <div class="panel panel-default" style="min-height: 350px;">
                    <div class="panel-heading">
                        日志报告
                    </div>
                    <div class="panel-body">
                        <p style="font-size: 20px">[cn.Filter.FilterServlet] - filter </p>
                        <p>cn.Filter.FilterServlet] - the method is get register or login </p>
                         <p>   [cn.Filter.FilterServlet] - filter   </p>
                           <p> [cn.Filter.FilterServlet] - the method is get other method  </p>
                        <p>  [cn.Servlet.ServletVenue] - 给我丶鼓励充值成功,金额为200元</p>
                        <p>  [cn.Filter.FilterServlet] - filter</p>
                        <p>   [cn.Filter.FilterServlet] - the method is get other method</p>
                        <p>   [cn.Servlet.ServletVenue] - 给我丶鼓励取得订单</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-default " >
                    <div class="panel-heading">
                        参数列表
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                 球馆
                                <span class="pull-right text-muted small"><em>4个</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                订单数
                                <span class="pull-right text-muted small"><em>120单</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                活动数量
                                <span class="pull-right text-muted small"><em>15条</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                会员人数
                                <span class="pull-right text-muted small"><em>38位</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                充值总金额
                                <span class="pull-right text-muted small"><em>126800元</em>
                                    </span>
                            </a>
                        </div>

                        <a href="#" class="btn btn-default btn-block">查看更多</a>
                    </div>
                </div>
            </div>
        </div>
        <!--日志报告信息-->


    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/orderform.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/raphael/raphael.min.js"></script>
<!--
<script src="<%=basePath%>jsp/myjsp/vendor/morrisjs/morris.min.js"></script>

<script src="<%=basePath%>jsp/myjsp/data/morris-data.js"></script>
-->
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>jsp/myjsp/dist/js/sb-admin-2.js"></script>


</body>
</html>
