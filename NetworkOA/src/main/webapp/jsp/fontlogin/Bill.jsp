<%--
  Created by IntelliJ IDEA.
  User: baron
  Date: 17-6-12
  Time: 上午1:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<!-- Bootstrap Core CSS -->
<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>表单查询</title>
</head>
<body >

<div class="container-fluid col-lg-5 " style="position: absolute;left: 50%;margin-left: -310px;"  >

    <ul class="list-group">
        <form:form commandName="te" action="/NetworkOA/te_repair/bill_appraise.do" method="post">

        <li class="list-group-item active">单号：<c:out value="${te.te_repair_id}"/></li>
        <li class="list-group-item">
            报修人：
          <c:out value="${te.te_repair_name}"/>

        </li>
        <li class="list-group-item">
            地址：
          <c:out value="${te.te_repair_address}"/>
        </li>
        <li class="list-group-item">
            电话：
         <c:out value="${te.te_repair_phone}"/>
        </li>
        <li class="list-group-item">
            <label >类型：</label>
            <c:out value="${te.te_repair_type}"/>
        </li>
        <li class="list-group-item">
          报修问题：
            <c:out value="${te.te_repair_question}"/>
        </li>
        <li class="list-group-item">
            备注：
           <c:out value="${te.te_repair_message}"/>
        </li>
        <li class="list-group-item">
            状态：
            <c:choose>
                <c:when test="${te.is_deal==0}">
                    <span class="label label-danger">未处理</span>
                </c:when>
                <c:when test="${te.is_deal==1}">
                    <span class="label label-warning">处理中</span>
                </c:when>
                <c:otherwise>
                    <span class="label label-info">处理完成</span>
                    <c:if test="${te.appraise==0}">
                        <span class="label label-warning">未评价</span>
                    </c:if>
                </c:otherwise>
            </c:choose>
        </li>

            <c:if test="${te.is_deal!=1}">
                    <li class="list-group-item">负责人：<c:out value="${te.principal}"/></li>
                    <li class="list-group-item">
                        维修过程：
                       <c:out value="${te.information}"/>
                    </li>
                    <li class="list-group-item">
                        维修心得（问题概括）：
                       <c:out value="${te.summarize}"/>
                    </li>
            </c:if>

           <!--未评价-->
        <c:if test="${te.appraise==0}">
                <form:hidden path="te_repair_id"/>

                <li class="list-group-item">评价：
                    <form:select  path="appraise" cssClass="form-control">
                        <option value="1">请选择评价</option>
                        <form:option value="1">满意</form:option>
                        <form:option value="2">一般</form:option>
                        <form:option value="3">不满意</form:option>
                    </form:select>
                </li>


                <li class="list-group-item">
                    建议：
                    <form:textarea path="suggest" class="form-control" name="suggest" cols="30" rows="3"/>
                </li>
                <li class="list-group-item">
                    评价人：
                    <form:input path="sign_user" class="form-control" name="sign_user" placeholder="签上确认人的名字"/>
                </li>
                <li class="list-group-item">
                    <button type="submit">确定评价</button>
                </li>

        </c:if>
        </form:form>
             <!--已经评价了-->
            <c:if test="${te.appraise!=0}">
                <li class="list-group-item">
                    评价：
                    <c:if test="${te.appraise==1}">
                        <span class="label label-success">非常满意</span>
                    </c:if>
                    <c:if test="${te.appraise==2}">
                        <span class="label label-info">满意</span>
                    </c:if>
                    <c:if test="${te.appraise==3}" >
                        <span class="label label-danger">不满意</span>
                    </c:if>

                </li>
                <li class="list-group-item">
                    建议:
                    ${te.suggest}
                </li>
                <li class="list-group-item">
                    评价者：
                    ${te.sign_user}
                </li>
            </c:if>

    </ul>

</div>







<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
