
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

    <!-- Bootstrap Core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">




    <link href="<%=basePath%>jsp/myjsp/lightbox/css/lightbox.css" rel="stylesheet">


    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>jsp/myjsp/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<%=basePath%>jsp/myjsp/vendor/morrisjs/morris.css" rel="stylesheet">

    <link href="<%=basePath%>jsp/myjsp/mypicture/css/mycss.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>jsp/myjsp/pages/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <!--zoom-->
  <script type="text/javascript" src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>

    <!--zoom-->

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

                    <!--日志情况-->
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i>日志<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>log/work/get.do?page=1">工作日志</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>log/associate/get.do?page=1">交接日志</a>
                            </li>
                            <li>
                                <a href="#">签到表</a>
                            </li>
                            <li>
                                <a href="#">值班表</a>
                            </li>
                        </ul>

                    </li>
                    <!--日志情况-->

                    <!--办公室工具管理-->
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i>工具管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>tool/get.do">工具列表</a>
                            </li>
                            <li>
                                <a href="#">工具借出表</a>
                            </li>
                        </ul>
                    </li>
                    <!--办公室工具管理-->

                    <!--网管员管理-->
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i>网管员管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">网管员名单</a>
                            </li>
                            <li>
                                <a href="#">网管员工作量</a>
                            </li>
                        </ul>
                    </li>
                    <!--网管员管理-->
                    <!--助理管理-->
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> 助理管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">助理名单</a>
                            </li>
                        </ul>

                    </li>
                    <!--助理管理-->

                    <!--维修单-->
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i>维修单<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">网络维修单</a>
                            </li>
                            <li>
                                <a href="#">行政单</a>
                            </li>
                        </ul>
                    </li>
                    <!--维修单-->
                    <!--信息管理-->
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i>信息管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">邮件信息</a>
                            </li>
                            <li>
                                <a href="#">私聊信息</a>
                            </li>
                        </ul>
                    <!--信息管理-->
                    <!--管理员管理-->
                    <li>
                        <a href="<%=basePath%>manager/get.do"><i class="glyphicon glyphicon-user"></i> 管理员管理</a>
                    </li>
                    <!--管理员管理-->
                     <li>
                         <a href="#"><i class="fa fa-table fa-fw"></i>网络中心纪念馆<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                             <li>
                                 <a href="#">网络中心管理者</a>
                             </li>
                             <li>
                                 <a href="#">历届助理</a>
                             </li>
                             <li>
                                 <a href="#">历届网管员</a>
                             </li>
                         </ul>
                     </li>

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
        <div class="row">
             <div class="col-lg-12">
               <!--  <div id="fh5co-page">
                     <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>


                     <div id="fh5co-main">

                         <div class="fh5co-gallery">

                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Nature</h2>
						<span>14 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_2.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>People</h2>
						<span>7 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_3.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Sky</h2>
						<span>22 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_4.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Building</h2>
						<span>28 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_5.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>People 2</h2>
						<span>17 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_6.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Beach</h2>
						<span>34 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_7.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Vegetarian Food</h2>
						<span>10 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_8.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Travel</h2>
						<span>19 Photos</span>
					</span>
                             </a>

                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_9.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Family</h2>
						<span>42 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_10.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Food</h2>
						<span>10 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_11.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Gadgets</h2>
						<span>76 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_12.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Cars</h2>
						<span>55 Photos</span>
					</span>
                             </a>

                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_13.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Animals</h2>
						<span>47 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_14.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Building 2</h2>
						<span>10 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_15.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Baloon</h2>
						<span>17 Photos</span>
					</span>
                             </a>
                             <a class="gallery-item" href="single.html">
                                 <img src="<%=basePath%>jsp/myjsp/mypicture/images/work_16.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                                 <span class="overlay">
						<h2>Animals 2</h2>
						<span>22 Photos</span>
					</span>
                             </a>
                         </div>

                     </div>
                 </div> -->

                 <div id="masonry" class="container-fluid">
                     <div class="box"><a href="<%=basePath%>jsp/myjsp/mypicture/images/work_1.jpg" data-lightbox="image-1" data-title="文字说明"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_1.jpg" /></a></div>
                     <div class="box"><a href="<%=basePath%>jsp/myjsp/mypicture/images/work_2.jpg" data-lightbox="image-1" data-title="文字说明"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_2.jpg" /></a></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_3.jpg" /></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_4.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_5.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_6.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_7.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_8.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_9.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_10.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_11.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_12.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_13.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_14.jpg"></div>
                     <div class="box"><img src="<%=basePath%>jsp/myjsp/mypicture/images/work_15.jpg"></div>
                 </div>
             </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->

<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>


<script src="<%=basePath%>jsp/myjsp/js/masonry-docs.min.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/masonry.pkgd.min.js"></script>


<script src="<%=basePath%>jsp/myjsp/lightbox/js/lightbox.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/raphael/raphael.min.js"></script>


<script src="<%=basePath%>jsp/myjsp/mypicture/js/myjs.js"></script>
<!--
<script src="jsp/myjsp/vendor/morrisjs/morris.min.js"></script>

<script src="jsp/myjsp/data/morris-data.js"></script>
-->
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>jsp/myjsp/dist/js/sb-admin-2.js"></script>


</body>
</html>
