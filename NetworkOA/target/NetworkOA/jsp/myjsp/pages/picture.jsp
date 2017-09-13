
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

    <link href="<%=basePath%>jsp/myjsp/mypicture/css/mycss.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>jsp/myjsp/pages/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">






</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <%@ include file="guide_head.jsp"%>
    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">照片墙</h1>
            </div>

        </div>
        <div class="row">
             <div class="col-lg-10">
                 <div id="masonry" class="container-fluid">



                 </div>
                 <div id="what">

                 </div>
             </div>

            <div class="col-lg-2">
               <div class="btn"><button id="addPicture" type="button" class="btn btn-info" >添加照片</button></div>
               <div class="btn"><button id="refresh" type="button" class="btn btn-info" >刷新一下吧～</button></div>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->

<script type="text/javascript" src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>

<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/masonry-docs.min.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/masonry.pkgd.min.js"></script>

<!--照片放大特效-->
<script src="<%=basePath%>jsp/myjsp/lightbox/js/lightbox.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="<%=basePath%>jsp/myjsp/vendor/raphael/raphael.min.js"></script>


<script src="<%=basePath%>jsp/myjsp/mypicture/js/myjs.js"></script>


<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>jsp/myjsp/dist/js/sb-admin-2.js"></script>


</body>
</html>
