<%--
  Created by IntelliJ IDEA.
  User: baron
  Date: 17-8-26
  Time: 上午11:25
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

    <!--jstree-->
    <link href="<%=basePath%>jsp/myjsp/js/jstree/dist/themes/default/style.min.css" rel="stylesheet">
    <link href="<%=basePath%>jsp/myjsp/css/toollist.css" rel="stylesheet">


    <!-- jPages-->
    <link href="<%=basePath%>jsp/myjsp/jPages-master/css/jPages.css" rel="stylesheet">


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
                <h1 class="page-header">工具列表</h1>
            </div>
        </div>
        <!--树列表-->
        <div class="col-lg-3" >
            <div class="panel panel-default">
                <div class="panel-heading">
                    列表
                    <div class="pull-right">
                        <button type="button" class="btn btn-info btn-xs" >查询</button>
                        <button type="button" class="btn btn-info btn-xs" id="treeAdd">添加</button>
                        <button type="button" class="btn btn-info btn-xs" id="treeDelete">删除</button>
                    </div>
                </div>
                <div class="panel-body" id="myjstree">
                </div>
            </div>
        </div>
        <!--数据列表-->
        <div class="col-lg-9" style="min-height: 700px">
            <div class="panel panel-default">
                <div class="panel-heading">
                    工具
                    <div class="pull-right">
                    <button type="button" class="btn btn-success btn-xs" id="print">导出</button>
                    <button type="button" class="btn btn-info btn-xs" id="add">添加</button>
                    <button type="button" class="btn btn-info btn-xs" id="edit">修改</button>
                    <button type="button" class="btn btn-info btn-xs" id="del">删除</button>
                    </div>
                </div>
                <div class="panel-body" id="mydata"></div>
            </div>
        </div>
    </div>

</div>




<!--模态框-->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <form method="post" action="" id="myform">
            <div class="modal-body" id="mytext" style="min-height: 400px;">在这里添加一些文本</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="checkButton"  class="btn btn-primary">查询</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>








<input hidden type="hidden" id="basepath" value="<%=basePath%>"/>
<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/jPages-master/js/jPages.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/toollist.js"></script>

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



<!--jstree-->
<script src="<%=basePath%>jsp/myjsp/js/jstree/dist/jstree.min.js"></script>


</body>
</html>
