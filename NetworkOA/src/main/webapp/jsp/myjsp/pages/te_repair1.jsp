
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



    <!--layui-->
    <link href="<%=basePath%>jsp/myjsp/layui-v1.0.9_rls/layui/css/layui.css" rel="stylesheet" media="all">

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




    <!-- jPages-->
    <link href="<%=basePath%>jsp/myjsp/jPages-master/css/jPages.css" rel="stylesheet">

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
                        <a href="#" ><i class="fa fa-table fa-fw"></i>日志<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>log/work/get.do?page=1" >工作日志</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>log/associate/get.do?page=1" >交接日志</a>
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
                        <a href="#" ><i class="fa fa-table fa-fw"></i>工具管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>tool/get.do" >工具列表</a>
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
                        <a href="#" class="active"><i class="fa fa-wrench fa-fw"></i> 助理管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=basePath%>/assistant/getWorking.do" class="active">助理名单</a>
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
                        <a href="<%=basePath%>administrator/list.do"><i class="glyphicon glyphicon-user"></i> 管理员管理</a>
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
                <h1 class="page-header">行政单</h1>

            </div>
        </div>
        <div class="row">
            <div class=" col-lg-12 ">
                <!--查询某月-->
                <div class="col-lg-3" style="border-right:black solid ">
                    <form action="<%=basePath%>sign/getDay.do" method="post">
                        <div class="layui-inline col-lg-7 ">
                            <input class="layui-input" placeholder="查询某月的单" name="day" onclick="layui.laydate({elem: this, festival: false,format:'YYYY-MM'})">
                        </div>
                        <div class="col-lg-2 ">
                          <button type="submit"   class="btn btn-info">查询</button>
                        </div>
                    </form>
                </div>
                <!--查询某月-->
                <!--查询问题的-->
                <div class="col-lg-4">
                    <form action="<%=basePath%>sign/getName.do" method="post">

                        <div class="col-lg-10">
                            <!--搜索-->
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                      <input type="text" class="form-control" placeholder="搜索问题..."/>
                                      <span class="input-group-btn">
                                         <button class="btn btn-default" type="submit">
                                           <i class="fa fa-search"></i>
                                         </button>
                                      </span>

                                </div>
                            </li>
                        </div>
                    </form>
                </div>
                <!--查询某个人某月-->
            </div>
        </div>
        <!--表单信息-->
        <div class="row ">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="myhead">
                            ${message}
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>单号</th>
                                <th>报单人</th>
                                <th>地址</th>
                                <th>电话号码</th>
                                <th>问题</th>
                                <th>状态</th>
                                <th>负责人</th>
                                <th>开单时间</th>
                                <th>其他</th>
                            </tr>
                            </thead>
                          <!--表格体-->
                            <tbody id="itemContainer">
                            <div>
                              <c:forEach var="as" items="${te_repair}">
                              <tr>
                                  <th><c:out value="${as.te_repair_id}"/></th>
                                  <th><c:out value="${as.te_repair_name}"/></th>
                                  <th><c:out value="${as.te_repair_address}"/> </th>
                                  <th><c:out value="${as.te_repair_phone}"/></th>
                                  <th><c:out value="${as.te_repair_question}"/></th>
                                  <th>
                                      <c:choose>
                                          <c:when test="${as.is_deal==0}">
                                              <button type="button" class="btn btn-danger">未处理</button>
                                          </c:when>
                                          <c:when test="${as.is_deal==1}">
                                              <button type="button" class="btn btn-default">处理中</button>
                                          </c:when>
                                          <c:otherwise>
                                              <button type="button" class="btn btn-success">已处理</button>
                                              <c:when test="${as.appraise==0}">
                                                  <button type="button" class="btn btn-danger">未签名</button>
                                              </c:when>
                                              <c:otherwise>
                                                  <button type="button" class="btn-default">已签名</button>
                                              </c:otherwise>
                                          </c:otherwise>
                                      </c:choose>
                                  </th>
                                  <th>
                                      <c:choose>
                                          <c:when test="${as.principal==null}">
                                              <button type="button" class=" btn btn-danger">没有</button>
                                          </c:when>
                                          <c:otherwise>
                                              <c:out value="${as.principal}"/>
                                          </c:otherwise>
                                      </c:choose>
                                  </th>
                                  <th>
                                      <fmt:formatDate value="${as.te_repair_time}" pattern="yyyy-MM-dd HH:mm"/>
                                  </th>
                                  <th>
                                      <c:choose>
                                          <c:when test="${as.is_deal==0}">
                                              <button type="button" class="btn btn-info">处理</button>
                                          </c:when>
                                      </c:choose>
                                      <!--
                                      <button type="button" class="btn btn-default" onclick="details('${as.te_repair_id}','${as.te_repair_name}','${as.te_repair_address}','${as.te_repair_time}','${as.te_repair_phone}','${as.te_repair_type}','${as.te_repair_question}','${as.te_repair_message}','${as.is_deal}','${as.appraise}','${as.suggest}','${as.sign_user}','${as.principal}','${as.te_repair_address}','${as.summarize}','${as.assistant}','${as.finished_time}')">详情</button>
                                      -->
                                      <button type="button" class="btn btn-primary" data-toggle="collapse"
                                              data-target="#demo">
                                          简单的可折叠组件
                                      </button>
                                  </th>
                              </tr>
                                 </div>
                                  <div id="demo" class="collapse in">
                                      Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                                      cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                                      vice lomo.
                                  </div>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>


                <div class="col-lg-4 holder"></div>

            </div>
        </div>
        <!--签到信息-->
        <div class="row" >
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="myhead">
                        详情
                    </div>

                <div class="panel-body">
                    <form method="post" action="<%=basePath%>sign/putData.do" onsubmit="return check()">
                    <table width="100%" class="table table-striped table-bordered table-hover" >
                        <!-- 表单头 -->
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>值</th>
                        </tr>
                        </thead>
                        <tbody>
                          <tr>
                              <td>单号</td>
                              <td>
                                   <c:out value="${as.te_repair_id}"/>
                              </td>
                          </tr>
                          <tr>
                              <td>日期</td>
                              <td>
                                  <input class="layui-input" placeholder="日期" name="day" required onclick="layui.laydate({elem: this, festival: false,min:laydate.now(),max:laydate.now()})">
                              </td>
                          </tr>
                          <tr>
                              <td>上班时间</td>
                              <td>
                                   <div class="col-lg-2">

                                           <select name="begin_h" id="begin_h" class="form-control">
                                               <option>8</option>
                                               <option>9</option>
                                               <option>10</option>
                                               <option>11</option>
                                               <option>12</option>
                                               <option>13</option>
                                               <option>14</option>
                                               <option>15</option>
                                               <option>16</option>
                                               <option>17</option>
                                               <option>18</option>
                                               <option>19</option>
                                               <option>20</option>
                                               <option>21</option>
                                               <option>22</option>
                                           </select>

                                   </div> <div class="col-lg-1">:</div>
                                  <div class="col-lg-2">

                                      <select name="begin_m" id="begin_m" class="form-control">
                                          <option>00</option>
                                          <option>30</option>
                                      </select>

                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>下班时间</td>
                              <td>
                                  <div class="col-lg-2">

                                      <select name="end_h" id="end_h" class="form-control">
                                          <option>8</option>
                                          <option>9</option>
                                          <option>10</option>
                                          <option>11</option>
                                          <option>12</option>
                                          <option>13</option>
                                          <option>14</option>
                                          <option>15</option>
                                          <option>16</option>
                                          <option>17</option>
                                          <option>18</option>
                                          <option>19</option>
                                          <option>20</option>
                                          <option>21</option>
                                          <option>22</option>
                                      </select>

                                  </div> <div class="col-lg-1">:</div>
                                  <div class="col-lg-2">

                                      <select name="end_m"  id="end_m" class="form-control">
                                          <option>00</option>
                                          <option>30</option>
                                      </select>

                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>时长</td>
                              <td>
                                  <span id="longtime">请正确填写时间段</span>
                                  <input type="hidden" name="longtime" value="" id="inlongtime"/>
                                  <div class="col-lg-2">
                                      <button class="btn-info btn" type="button" id="btntime" onclick="judge()">计算时长</button>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td></td>
                              <td><button class="btn-info btn">签到</button> </td>
                          </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper

<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/jPages-master/js/jPages.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/layui-v1.0.9_rls/layui/layui.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/terepair.js"></script>


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


</body>
</html>
