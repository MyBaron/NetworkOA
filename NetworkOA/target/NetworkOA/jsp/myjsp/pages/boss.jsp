
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

    <title>新华网络中心OA办公系统</title>
    <%@ include file="head.jsp" %>

    <!--幻灯片播放-->
    <link rel="stylesheet" href="<%=basePath%>jsp/myjsp/boss_pic/css/picCarousel.css">

    <!---->
    <link rel="stylesheet" href="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/skin/default/layer.css">


    <!-- Custom Fonts -->
    <link href="<%=basePath%>jsp/myjsp/pages/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">




</head>


<body style="background-color:black; ">

<div id="wrapper">

    <!-- 导航 头  -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="<%=basePath%>jsp/myjsp/pages/index.jsp">新华网络中心OA办公系统</a>
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
                                <strong>xxx</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>xxx的电脑死机了</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>xxx</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>xxx的电脑死机了</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>xxx</strong>
                                <span class="pull-right text-muted">
                                        <em>2017-5-1</em>
                                    </span>
                            </div>
                            <div>xxx的电脑死机了</div>
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
                        <a class="text-center" href="#">
                            <strong>查看更多</strong>
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
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>${sessionScope.administrator.administrator_name}信息</a>
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

    </nav>

    <!--首页-->
    <div class="col-lg-12 col-sm-12">
        <div class="poster-main A">
            <div class="poster-btn poster-prev-btn"></div>
            <ul class="poster-list">

                <li class="poster-item"><a href="#" onclick="kk()" class="tooltip-test" data-toggle="tooltip" title="叶本青老师 ：有助理在吗？来泡个茶呗"><img src="<%=basePath%>jsp/myjsp/boss_pic/img/1.jpg" width="100%" ></a></li>
                <li class="poster-item"><a href="#" onclick="kk()" class="tooltip-test" data-toggle="tooltip" title="简俊老师 ：肿么肥事！"><img src="<%=basePath%>jsp/myjsp/boss_pic/img/2.jpg" width="100%" ></a></li>
                <li class="poster-item"><a href="#" onclick="kk()"  class="tooltip-test" data-toggle="tooltip" title="陈润主任 ：帅！"><img src="<%=basePath%>jsp/myjsp/boss_pic/img/3.jpg" width="100%" ></a></li>
                <li class="poster-item"><a href="#" onclick="kk()"  class="tooltip-test" data-toggle="tooltip" title="王伟楠老师：我们今天的主题是感恩的心，这个感恩的心啊..."><img src="<%=basePath%>jsp/myjsp/boss_pic/img/4.jpg" width="100%" ></a></li>

                <li class="poster-item"><a href="#" onclick="kk()" class="tooltip-test" data-toggle="tooltip" title="王砚瀚老师：你有困难我来帮，我住隔壁我姓王"><img src="<%=basePath%>jsp/myjsp/boss_pic/img/5.jpg" width="100%" ></a></li>
            </ul>
            <div class="poster-btn poster-next-btn"></div>
        </div>


    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->


<script src="<%=basePath%>jsp/myjsp/boss_pic/js/jquery.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/boos.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/raphael/raphael.min.js"></script>
<!--
<script src="jsp/myjsp/vendor/morrisjs/morris.min.js"></script>

<script src="jsp/myjsp/data/morris-data.js"></script>
-->
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>jsp/myjsp/dist/js/sb-admin-2.js"></script>

<!--幻灯片播放-->

<script src="<%=basePath%>jsp/myjsp/boss_pic/js/PicCarousel.js"></script>


</body>
</html>
