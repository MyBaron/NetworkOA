
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

    <%@ include file="head.jsp" %>

    <!--layui-->
    <link href="<%=basePath%>jsp/myjsp/layui-v1.0.9_rls/layui/css/layui.css" rel="stylesheet" media="all">





    <!-- jPages-->
    <link href="<%=basePath%>jsp/myjsp/jPages-master/css/jPages.css" rel="stylesheet">


    <![endif]-->
    <script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.parse.js"></script>




</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <%@ include file="guide_head.jsp"%>
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
                <!--右边按钮-->
                <div class="col-lg-3 pull-right">
                    <a href="/NetworkOA/te_repair/getDoing.do"><button class="btn btn-warning">未完成</button></a>
                   <!-- <a href="0.do"><button class="btn btn-info">未评价</button></a>-->
                    <a href="/NetworkOA/te_repair/getFinish/1.do"><button class="btn btn-success">已完成</button></a>
                </div>
                <!--右边按钮-->
            </div>
        </div>
        <!--表单信息-->
        <div class="row ">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="myhead">
                            ${message}
                    </div>

                        <c:forEach var="as" items="${te_repair}">
                    <div class="panel-heading" id="myhead" style="margin-top: 10px;">
                            单号：<c:out value="${as.te_repair_id}"/> <br><br>
                            地址：<c:out value="${as.te_repair_address}"/><br><br>
                            问题：<c:out value="${as.te_repair_question}"/><br><br>
                            状态：
                            <c:choose>
                            <c:when test="${as.is_deal==0}">
                                <span class="label label-danger">未处理</span>
                            </c:when>
                            <c:when test="${as.is_deal==1}">
                                <span class="label label-warning">处理中</span>
                            </c:when>
                            <c:otherwise>
                                <span class="label label-info">处理完成</span>
                                <c:if test="${as.appraise==0}">
                                    <span class="label label-warning">未评价</span>

                                </c:if>


                            </c:otherwise>
                            </c:choose> <br><br>
                            操作:
                                 <button type="button" class="btn btn-info" data-toggle="collapse"
                                         data-target="#<c:out value='${as.te_repair_id}'/> " style="margin-left: 10px;">报修单详情</button>
                                <c:choose>
                                    <c:when test="${as.is_deal==0}">
                                        <button type="button" class="btn btn-info" onclick='accept("<%=basePath%>",<c:out value="${as.te_repair_id}"/>)' style="margin-left: 10px;">接单</button>
                                    </c:when>
                                    <c:when test="${as.is_deal==1}">
                                        <button type="button" class="btn btn-info" data-toggle="collapse"
                                                data-target="#service<c:out value='${as.te_repair_id}'/> " style="margin-left: 10px;">维修详情</button>
                                    </c:when>
                                    <c:when test="${as.is_deal==2}">
                                        <button type="button" class="btn btn-info" data-toggle="collapse"
                                                data-target="#service<c:out value='${as.te_repair_id}'/> " style="margin-left: 10px;">维修详情</button>
                                        <a href="/NetworkOA/te_repair/checkBill.do?id=<c:out value='${as.te_repair_id}'/>" target="_blank">
                                            <button type="button" class="btn btn-success"  style="margin-left: 10px;" >评价</button>
                                        </a>
                                    </c:when>
                                </c:choose>
                    </div>
                            <!--报修单详情-->
                            <div id="<c:out value='${as.te_repair_id}'/>" class="collapse out">
                                <form method="post" action="<%=basePath%>te_repair/alterReMessage.do" onsubmit="return checkAlterRe()">
                                <div class="panel-body">
                                <ul class="list-group">
                                    <li class="list-group-item active">
                                        <input type="hidden" name="id" value='<c:out value="${as.te_repair_id}"/>'>
                                        单号：<c:out value="${as.te_repair_id}"/>
                                    </li>
                                    <li class="list-group-item">
                                        报修人：
                                        <span class="output<c:out value='${as.te_repair_id}'/>"><c:out value="${as.te_repair_name}"/></span>
                                        <input type="text"  style="display: none"  class="repair<c:out value='${as.te_repair_id}'/>"  value='<c:out value="${as.te_repair_name}"/>' id="repair_name" name="name"/>

                                    </li>
                                    <li class="list-group-item">
                                        地址：
                                        <span class="output<c:out value='${as.te_repair_id}'/>"><c:out value="${as.te_repair_address}"/></span>
                                        <input type="text" style="display: none"  class="repair<c:out value='${as.te_repair_id}'/>"  value='<c:out value="${as.te_repair_address}"/>' id="repair_address" name="address"/>
                                    </li>
                                    <li class="list-group-item">
                                        <label for="repair_phone">电话：</label>
                                        <span class="output<c:out value='${as.te_repair_id}'/>"><c:out value="${as.te_repair_phone}"/></span>
                                        <input type="text"   style="display: none"  class="repair<c:out value='${as.te_repair_id}'/>"  value='<c:out value="${as.te_repair_phone}"/>' id="repair_phone" name="phone"/>
                                    </li>
                                    <li class="list-group-item">
                                        <label >类型：</label>
                                        <input type="hidden"  value='<c:out value="${as.te_repair_type}"/>' name="type">
                                        <c:out value="${as.te_repair_type}"/>
                                    </li>
                                    <li class="list-group-item">
                                        <label >时间：</label>
                                        <c:out value="${as.te_repair_time}"/>
                                    </li>
                                    <li class="list-group-item">
                                        <label for="repair_question">报修问题：</label>
                                        <span class="output<c:out value='${as.te_repair_id}'/>"><c:out value="${as.te_repair_question}"/></span>
                                        <textarea class="form-control repair<c:out value='${as.te_repair_id}'/>"  style="display:none"   name="question" id="repair_question" cols="30" rows="2"><c:out value="${as.te_repair_question}"/></textarea>
                                    </li>
                                    <li class="list-group-item">
                                        <label for="repair_message">备注：</label>
                                        <span class="output<c:out value='${as.te_repair_id}'/>"><c:out value="${as.te_repair_message}"/></span>
                                        <textarea class="form-control repair<c:out value='${as.te_repair_id}'/>" style="display:none"   name="message" id="repair_message" cols="30" rows="2"><c:out value="${as.te_repair_message}"/></textarea>
                                    </li>
                                    <li class="list-group-item">
                                        状态：
                                        <c:choose>
                                            <c:when test="${as.is_deal==0}">
                                                <span class="label label-danger">未处理</span>
                                            </c:when>
                                            <c:when test="${as.is_deal==1}">
                                                <span class="label label-warning">处理中</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="label label-info">处理完成</span>
                                                <c:if test="${as.appraise==0}">
                                                    <span class="label label-warning">未评价</span>
                                                 </c:if>

                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                    <c:choose>
                                        <c:when test="${as.is_deal==2}">
                                    <li class="list-group-item">
                                        完成时间：<span ><fmt:formatDate value="${as.finished_time}" pattern="yyyy-MM-dd HH:mm"/> </span>
                                    </li>
                                        </c:when>
                                    </c:choose>
                                    <li class="list-group-item">
                                        <button type="button" id="change<c:out value='${as.te_repair_id}'/>"  class="btn btn-info" onclick="mychange(<c:out value='${as.te_repair_id}'/>)">修改</button>
                                        <button type="submit" id="such<c:out value='${as.te_repair_id}'/>" style="display: none" class="btn btn-info">提交修改</button>
                                    </li>
                                </ul>
                                </div>
                                </form>
                            </div>
                            <!--维修详情-->
                            <form  id="service<c:out value='${as.te_repair_id}'/>" method="post" action="<%=basePath%>te_repair/alterReAssistant.do?id=<c:out value='${as.te_repair_id}'/>"  >
                            <c:if test="${as.is_deal!=0}">
                               <div id="service<c:out value='${as.te_repair_id}'/>" class="collapse out">
                                 <div class="panel-body">
                                    <ul class="list-group">
                                      <li class="list-group-item">负责人：<c:out value="${as.principal}"/></li>
                                        <li class="list-group-item">
                                            维修过程：
                                            <textarea class="form-control" name="information" cols="30" rows="3"><c:out value="${as.information}"/></textarea>
                                        </li>
                                        <li class="list-group-item">
                                            维修心得（问题概括）：
                                            <textarea class="form-control" name="summarize" cols="30" rows="3"><c:out value="${as.summarize}"/></textarea>
                                        </li>
                                        <li class="list-group-item">
                                            <button class="btn btn-info" type="submit" onclick="return checkAlterRe()">提交修改</button>
                                            <button class="btn btn-success" type="submit" onclick='return myfinish("<%=basePath%>",<c:out value="${as.te_repair_id}"/>)'>完成维修</button>
                                        </li>
                                    </ul>
                                 </div>
                               </div>
                            </c:if>
                            </form>

                        </c:forEach>


                </div>


                <div class="col-lg-4 holder"></div>

            </div>
        </div>
        <!--分页-->
        <div class="col-lg-4">
            <nav aria-label="...">
                <ul class="pagination">
                    <c:choose>
                        <c:when test="${page>1}"><li><a href="<%=basePath%>/te_repair/getFinish/${page-1}">上一页</a></li></c:when>
                        <c:otherwise><li class="disabled"><a href="#" >上一页</a></li></c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${page<pages}">
                            <li><a href="<%=basePath%>/te_repair/getFinish/${page+1}.do">下一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" >下一页</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>

            </nav>
        </div>

        <div style="padding-top: 10px;" class="col-lg-4">
            <h3>当前页数:${page}/总页数:${pages}</h3>

        </div>

        <!--分页-->
        <!--签到信息-->
        <div class="row" >
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" >
                        报修
                    </div>

                <div class="panel-body">
                    <form method="post" action="<%=basePath%>te_repair/putData.do" onsubmit="return mycheck()">
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
                              <td>报修姓名</td>
                              <td>
                                   <input class="form-control" type="text" name="te_repair_name">
                              </td>
                          </tr>
                          <tr>
                              <td>手机号码</td>
                              <td>
                                  <input class="form-control" type="text" name="te_repair_phone">
                              </td>
                          </tr>
                          <tr>
                              <td>地址</td>
                              <td>
                                  <input class="form-control" type="text" name="te_repair_address">
                              </td>
                          </tr>
                          <tr>
                              <td>问题类型</td>
                              <td>
                                  <div>
                                  <select class="form-control" name="te_repair_type">
                                      <option >电脑问题</option>
                                      <option >打印机问题</option>
                                      <option >网络问题</option>
                                      <option >其他</option>
                                  </select>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>报修问题</td>
                              <td>
                                <textarea class="form-control"   cols="30" rows="3" name="te_repair_question"></textarea>
                              </td>

                          </tr>
                          <tr>
                              <td>备注</td>
                              <td>
                                  <textarea class="form-control"   cols="30" rows="3" name="te_repair_message"></textarea>
                              </td>

                          </tr>
                          <tr>
                              <td></td>
                              <td><button class="btn-info btn" type="submit" >开单</button> </td>
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
