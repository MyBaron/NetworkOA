
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
    <%@ include file="guide_head.jsp"%>
    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">工具列表</h1>

            </div>
        </div>
        <!--表单信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        工具列表
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>工具名称</th>
                                <th>数量</th>
                                <th>负责人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                          <!--表格体-->
                            <tbody id="itemContainer">
                              <c:forEach var="as" items="${tool}">
                                  <tr>
                                      <th><c:out value="${as.tool_id}"/></th>
                                      <th><c:out value="${as.tool_name}"/></th>
                                      <th><c:out value="${as.tool_sum}"/></th>
                                      <th><c:out value="${as.tool_principal}"/></th>
                                      <th><button type="button" class="btn btn-info" onclick="fix('<%=basePath%>tool/alter.do?tool_id=',${as.tool_id},'${as.tool_name}',${as.tool_sum},'${as.tool_principal}')" >修改</button>
                                          <button type="button" class="btn btn-danger" onclick="del('<%=basePath%>tool/delete.do?tool_id=',${as.tool_id})" >删除</button>
                                      </th>
                                  </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>


                <div class="col-lg-4 holder"></div>
                <!--分页-->
                <!--
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

                <div style="padding-top: 10px;" class="col-lg-4">
                    <h3>当前页数:${pagenow}/总页数:${pages}</h3>

                </div>
                -->
                <!--分页-->
            </div>
        </div>
        <!--表单信息-->
        <!--增加交接信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        增加工具
                    </div>
                    <div class="panel-body">
                        <form method="post" action="<%=basePath%>/tool/put.do">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <tbody>
                                <tr>
                                   <td>
                                       工具名称
                                   </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text"   class="form-control" required="required" name="tool_name">
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        数量
                                    </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text" name="tool_sum"  class="form-control"  required="required" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();">
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        负责人
                                    </td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >

                                            <label>
                                                <input type="text"  class="form-control" name="tool_principal">
                                            </label>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td>
                                        <div style="padding-left: 0" >
                                            <button type="submit" class="btn btn-info">增加</button>
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

<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/jPages-master/js/jPages.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/js/toollistOld.js"></script>

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
