
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

    <!--jPages-->
    <link href="<%=basePath%>jsp/myjsp/jPages-master/css/jPages.css" rel="stylesheet">






</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <%@ include file="guide_head.jsp"%>

    <!--内容-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">管理员 </h1>

            </div>
        </div>
        <!--表单信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        管理员
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>姓名</th>
                                <th>账号</th>
                                <th>权限</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <!--表格体-->
                            <tbody id="itemContainer">
                            <c:forEach var="as" items="${administrator}">
                                <tr>
                                    <th><c:out value="${as.administrator_id}"/></th>
                                    <th><c:out value="${as.administrator_name}"/></th>
                                    <th><c:out value="${as.administrator_account}"/></th>
                                    <th><c:out value="${as.administrator_right}"/></th>
                                    <th><button type="button" class="btn btn-info" onclick="fix('<%=basePath%>administrator/fix.do?id=',${as.administrator_id},'${as.administrator_name}',${as.administrator_account},'${as.administrator_password}')" disable="disable" >修改</button>

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
        <!--表单信息-->
        <!--增加交接信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        增加管理员
                    </div>
                    <div class="panel-body">
                        <form method="post" action="<%=basePath%>administrator/add.do">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <tbody>
                                <tr>
                                    <td>
                                        姓名
                                    </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text"   class="form-control" required="required" name="name">
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        账号
                                    </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text" name="account"  class="form-control"  required="required" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();">
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        密码
                                    </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text"  class="form-control" name="password">
                                            </label>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td>
                                        <div style="padding-left: 0" >
                                            <button type="submit" class="btn btn-info">添加</button>
                                            <button type="reset" class="btn btn-info">重写</button>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </form>
                    </div>
                </div>


            </div>
        </div>
        <!--增加交接信息-->
    </div>
</div>
<!-- /#wrapper -->
</body>
<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/jPages-master/js/jPages.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/administrator.js"></script>


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


</html>
