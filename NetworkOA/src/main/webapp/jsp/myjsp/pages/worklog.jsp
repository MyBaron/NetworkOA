
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
                <h1 class="page-header">工作日志 </h1>
                <div class="pull-right" style="margin-bottom: 10px;">
                    <button type="button" class="btn btn-info ">添加</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <c:set value="0" var="b"/>
                <c:forEach var="workLog" items="${workLog}"  >

                <div class="panel panel-default">
                    <div class="panel-heading" style="min-height: 80px;">
                        <h1 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#<c:out value="${workLog.work_id}"/>" >
                                姓名：<c:out value="${workLog.administrator_name}"/> </br>
                                  时间：<fmt:formatDate value='${workLog.work_time}' pattern='yyyy-MM-dd HH:mm' />
                            </a>
                            <button type="button" class="btn btn-info pull-right" onclick="altertext(${workLog.work_id},'<%=basePath%>')">修改</button>
                        </h1>
                    </div>
                    <div id="<c:out value="${workLog.work_id}"/>" class="panel-collapse collapse <c:choose><c:when test="${b==0}">in <c:set value="1" var="b"/> </c:when> </c:choose>">
                        <div class="panel-body">
                            <c:out value="${workLog.work_text}" escapeXml="false"/>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <!--分页-->

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

                <div style="padding-top: 10px;"><h3>当前页数:${pagenow}/总页数:${pages}</h3></div>
                <!--分页-->
            </div>
        </div>



        <!--日志报告填写-->
        <!--
        <div class="row">
            <div class="col-lg-12" >
                <div  style="min-height: 350px;">
                        <form action="<%=basePath%>log/work/put.do" method="post" >
                            <input hidden id="hiddenId" value="#" name="id">

                        <script id="container" name="content" type="text/plain">
 写工作日志吧，少年~
                        </script>
                            <button type="submit" class="btn btn-info">提交</button>
                        </form>

                </div>
            </div>
        </div>

        <!--日志报告填写-->


    </div>
</div>
<!-- /#wrapper -->

<!--模态框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <form method="post" action="" id="myform">
                <div class="modal-body" id="mytext" style="min-height: 400px;">
                    <script id="container" name="content" type="text/plain">
                       写工作日志吧，少年~
                        </script></div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" id="checkButton"  class="btn btn-primary">提交</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>


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

<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath%>jsp/myjsp/js/editor/ueditor.all.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/worklog.js"></script>
<!-- 实例化编辑器 -->
<!--
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
-->
</body>
</html>
