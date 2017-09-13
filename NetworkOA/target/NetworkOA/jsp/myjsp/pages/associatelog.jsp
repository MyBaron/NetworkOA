
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



</head>
<body>

<div id="wrapper">

    <!-- 导航 头  -->
    <%@ include file="guide_head.jsp"%>
    <!--首页-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">交接 </h1>

            </div>
        </div>
        <!--表单信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        等待处理的问题
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>交接内容</th>
                                <th>时间</th>
                                <th>留言者</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                          <!--表格体-->
                            <tbody>
                              <c:forEach var="as" items="${associate}">
                                  <tr>
                                      <th><c:out value="${as.associate_id}"/></th>
                                      <th><c:out value="${as.associate_text}"/></th>
                                      <th><fmt:formatDate value="${as.associate_time}" pattern="yyyy-MM-dd HH:mm" /></th>
                                      <th><c:out value="${as.administrator_name}"/></th>
                                      <c:choose>
                                          <c:when test="${as.associate_open==1}">
                                             <th><button type="button" class="btn btn-info" onclick='butten( &quot;<c:out value="${as.associate_text}"/> &quot;,"<%=basePath%>log/associate/alter.do?",&quot;<c:out value= '${as.associate_id}'/>&quot;)'>修改</button>
                                                 <button type="button" class="btn btn-success" onclick="finish('<%=basePath%>log/associate/finish.do?',&quot;<c:out value= '${as.associate_id}'/>&quot;)">完成啦~</button>
                                             </th>
                                          </c:when>
                                          <c:otherwise>
                                              <th>
                                                  <button type="button" class="btn btn-success" >已完成</button>
                                              </th>
                                          </c:otherwise>
                                      </c:choose>
                                  </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!--分页-->
                <div class="col-lg-4">
                   <nav aria-label="...">
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${pagenow>1}"><li><a href="<%=basePath%>log/associate/getall.do?page=${pagenow-1}">上一页</a></li></c:when>
                            <c:otherwise><li class="disabled"><a href="#" >上一页</a></li></c:otherwise>
                        </c:choose>
                        <c:choose>
                        <c:when test="${pagenow<pages}">
                            <li><a href="<%=basePath%>log/associate/getall.do?page=${pagenow+1}">下一页</a></li>
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
                <!--分页-->
                <div class="text-right" style="padding-top: 10px;" >
                    <a href="<%=basePath%>log/associate/getall.do?page=1" ><button type="button" class="btn btn-info">显示全部</button></a>
                    <a href="<%=basePath%>log/associate/get.do?page=1" ><button type="button" class="btn btn-info">显示未完成的</button></a>
                    <div>

            </div>
        </div>
        <!--表单信息-->
        <!--增加交接信息-->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        增加交接
                    </div>
                    <div class="panel-body">
                        <form method="post" action="<%=basePath%>log/associate/put.do">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <tbody>
                                <tr>
                                   <td>交接内容</td>
                                    <td>
                                        <div class="col-lg-5" style="padding-left: 0" >
                                            <textarea class="form-control" name="associate_text" placeholder="交接内容"  rows="3" required="required"></textarea>
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

<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

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
