
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/3
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.parse.js"></script>




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
                        <a href="<%=basePath%>jsp/myjsp/pages/index.jsp" ><i class="fa fa-dashboard fa-fw"></i> 首页</a>
                    </li>

                    <!--日志情况-->
                    <li>
                        <a href="#" class="active"><i class="fa fa-table fa-fw"></i>日志<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>log/work/get.do?page=1" class="active">工作日志</a>
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
                <h1 class="page-header">工作日志 </h1>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!--
        <table width="100%" class="table table-striped table-bordered table-hover">
            <tbody>
               <tr>
                    <td>编号</td>
                    <th></th>
               </tr>
               <tr>
                   <td>用户名</td>
                   <th></th>
               </tr>
               <tr>
                   <td>内容</td>
                   <th></th>
               </tr>
               <tr>
                   <td>时间</td>
                   <th></th>
               </tr>
               <tr>
                   <td>操作</td>
                   <th><button type="button" class="btn btn-info">修改</button> </th>
               </tr>
            </tbody>

        </table>
                -->
                <c:set value="0" var="b"/>
                <c:forEach var="workLog" items="${workLog}"  >

                <div class="panel panel-default">
                    <div class="panel-heading" style="min-height: 80px;">
                        <h1 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#<c:out value="${workLog.work_id}"/>" >
                                姓名：<c:out value="${workLog.administrator_name}"/> </br>
                                  时间：<fmt:formatDate value='${workLog.work_time}' pattern='yyyy-MM-dd HH:mm' />
                            </a>
                            <button type="button" class="btn btn-info pull-right">删除</button>
                        </h1>
                    </div>
                    <div id="<c:out value="${workLog.work_id}"/>" class="panel-collapse collapse <c:choose><c:when test="${b==0}">in <c:set value="1" var="b"/> </c:when> </c:choose>">
                        <div class="panel-body">
                            <c:out value="${workLog.work_text}" escapeXml="false"/>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <!--分页-->

                <div class="col-lg-4">
                   <nav aria-label="...">
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${pagenow>1}"><li><a href="<%=basePath%>log/work/get.do?page=${pagenow-1}">上一页</a></li></c:when>
                            <c:otherwise><li class="disabled"><a href="#" >上一页</a></li></c:otherwise>
                        </c:choose>
                        <c:choose>
                        <c:when test="${pagenow<pages}">
                            <li><a href="<%=basePath%>log/work/get.do?page=${pagenow+1}">下一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" >下一页</a></li>
                        </c:otherwise>
                        </c:choose>
                    </ul>

                   </nav>
                 </div>

                <div style="padding-top: 10px;"><h3>当前页数:${pagenow}/总页数:${pages}</h3></div>
                <!--分页-->
            </div>
        </div>



        <!--日志报告填写-->
        <div class="row">
            <div class="col-lg-12" >
                <div  style="min-height: 350px;">
                        <form action="<%=basePath%>log/work/put.do" method="post" >
                        <!-- 加载编辑器的容器 -->
                        <script id="container" name="content" type="text/plain">
 写工作日志吧，少年~
                        </script>
                            <button type="submit" class="btn btn-info">提交</button>
                        </form>

                </div>
            </div>
        </div>
        <!--日志报告填写-->


    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>


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

<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</body>
</html>
