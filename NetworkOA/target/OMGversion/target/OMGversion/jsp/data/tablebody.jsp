<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/4
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
ddd
<div id="tablejsp">
    <c:forEach var="tr" items="${gym}">
    <tr>
        <td><c:out value="${tr.gym_id}"></c:out></td>
        <td><c:out value="${tr.gym_begin_time}"></c:out></td>
        <td><c:out value="${tr.gym_long_time}"></c:out></td>
        <td><c:out value="${tr.gym_name}"></c:out></td>
        <td><c:out value="${tr.user_name}"></c:out></td>
        <td><c:out value="${tr.gym_money}"></c:out></td>
    </tr>
</c:forEach>
</div>
</body>
</html>
