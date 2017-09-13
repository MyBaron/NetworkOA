<%--
  Created by IntelliJ IDEA.
  User: baron
  Date: 17-8-4
  Time: 下午7:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" pageEncoding="UTF-8" %>
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
                <li><a href="<%=basePath%>administrator/out.do"><i class="fa fa-sign-out fa-fw"></i> 登出</a>
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
                    <a href="#"><i class="fa fa-table fa-fw"></i>日志<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<%=basePath%>log/work/get.do?page=1">工作日志</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>log/associate/get.do?page=1">交接日志</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>sign/getDay.do">签到表</a>
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
                            <a href="<%=basePath%>tool/getPage.do">工具列表</a>
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
                            <a href="#">网络维修单</a>
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
                            <a href="<%=basePath%>assistant/getWorking.do">助理名单</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>te_repair/getDoing.do">行政单</a>
                        </li>
                    </ul>

                </li>
                <!--助理管理-->

                <!--维修单-->
                <!--
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
                -->
                <!--维修单-->
                <!--信息管理-->
                <!--
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
                    -->
                <!--信息管理-->
                <!--管理员管理-->
                <li>
                    <a href="#"><i class="glyphicon glyphicon-user"></i> 管理员管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<%=basePath%>administrator/list.do">管理员名单</a>
                        </li>
                        <li>
                            <a href="#">权限设置</a>
                        </li>
                        <li>
                            <a href="#">工具位置设置</a>
                        </li>
                    </ul>
                </li>
                <!--管理员管理-->
                <li>
                    <a href="#"><i class="fa fa-table fa-fw"></i>纪念馆<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<%=basePath%>jsp/myjsp/pages/boss.jsp">管理者</a>
                        </li>
                        <li>
                            <a href="#">历届助理</a>
                        </li>
                        <li>
                            <a href="#">历届网管员</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>jsp/myjsp/pages/picture.jsp">照片墙</a>
                        </li>
                       <!--
                        <li>
                            <a href="#" id="myThink" onclick="mythink()" >初衷</a>
                        </li>
                        -->
                    </ul>
                </li>

            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>


