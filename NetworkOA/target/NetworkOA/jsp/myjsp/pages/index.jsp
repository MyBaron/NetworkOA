
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/3
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" pageEncoding="UTF-8" %>
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

</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
<%@ include file="guide_head.jsp"%>

    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">首页</h1>
            </div>

        </div>
    <!--第一行信息-->

        <!--第一行信息-->
        <!--日志报告信息-->
        <div class="row">
            <div class="col-lg-8" >
                <div class="panel panel-default" id="charts" style="min-height: 350px;">

                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default " >
                    <div class="panel-heading">
                        最近访客
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <c:set var="number" value="${0}" scope="page"/>
                            <c:forEach var="lo" items="${loginer}" >
                                <a href="#" class="list-group-item">
                                    <c:out value="${lo.name}"/>
                                    <span class="pull-right text-muted small"><em><c:out value="${lo.time}" /></em>
                                    </span>
                                </a>

                            </c:forEach>

                        </div>

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
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/index.js"></script>

<!--echarts-->
<script src="<%=basePath%>jsp/myjsp/js/echarts/echarts.js"></script>

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
