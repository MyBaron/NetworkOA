
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

    <!-- jPages-->
    <link href="<%=basePath%>jsp/myjsp/jPages-master/css/jPages.css" rel="stylesheet">






</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <%@ include file="guide_head.jsp"%>
    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">助理名单</h1>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <a href="<%=basePath%>/assistant/getWorking.do"><button class="btn btn-primary">在任助理</button></a>
                <a href="<%=basePath%>/assistant/getAll.do" ><button class="btn btn-primary">全部助理</button></a>
                   <!--顺序-->
                <!--
                    <ul class="nav navbar-nav pull-right" >
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">顺序
                                <b class="caret"></b>
                            </a>

                            <ul class="dropdown-menu">
                                <li>
                                    <a id="action-1" href="#">从小到大</a>
                                </li>
                                <li>
                                    <a  href="#">从大到小</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                  -->
                <button class="btn btn-success pull-right" onclick="add('<%=basePath%>/assistant/putData.do')">添加助理</button>

            </div>
        </div>
        <!--表单信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="myhead">
                        在任助理
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>名称</th>
                                <th>专业</th>
                                <th>学号</th>
                                <th>电话号码</th>
                                <th>宿舍号</th>
                                <th>生日</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                          <!--表格体-->
                            <tbody id="itemContainer">
                              <c:forEach var="as" items="${assistant}">
                                  <tr>
                                      <th><c:out value="${as.assistant_id}"/></th>
                                      <th><c:out value="${as.assistant_name}"/></th>
                                      <th><c:out value="${as.assistant_profession}"/></th>
                                      <th><c:out value="${as.assistant_number}"/></th>
                                      <th><c:out value="${as.assistant_phone}"/></th>
                                      <th><c:out value="${as.assistant_grade}"/></th>
                                      <th><c:out value="${as.assistant_birthday}"/></th>
                                      <th>
                                          <c:choose>
                                              <c:when test="${as.assistant_working==1}">
                                                  <button type="button" class="btn btn-info active">在任</button>
                                              </c:when>
                                              <c:otherwise>
                                                  <button type="button" class="btn btn-success active">退休</button>
                                              </c:otherwise>
                                          </c:choose>
                                      </th>
                                      <th><button type="button" class="btn btn-info" onclick="fix('<%=basePath%>assistant/alterData.do?assistant_id=',${as.assistant_id},'${as.assistant_name}','${as.assistant_profession}','${as.assistant_grade}','${as.assistant_birthday}','${as.assistant_phone}','${as.assistant_number}',${as.assistant_working})" >修改</button>
                                      </th>
                                  </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>


                <div class="col-lg-4 holder"></div>

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
<script src="<%=basePath%>jsp/myjsp/js/assistant.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/associatelog.js"></script>


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
