<%--
  Created by IntelliJ IDEA.
  User: baron
  Date: 17-6-3
  Time: 下午3:27
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
    <title>Title</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
   <form>
   <table width="100%" class="table ">
       <caption>报修单基本信息</caption>
       <tbody>
         <tr>
             <td>单号</td>
             <td>id</td>
             <td>报修人姓名</td>
             <td><input type="text"  class="form-control" value=""  name="profession"></td>
             <td>地址</td>
             <td><input type="text"  class="form-control" value=""  name="profession"></td>
         </tr>
         <tr>
             <td>报修电话</td>
             <td><input type="text"  class="form-control" value=""  name="profession"></td>
             <td>报修类型</td>
             <td><button type="button" class="btn btn-info">type</button></td>
             <td></td>
             <td></td>
         </tr>
         <tr>
             <td>报修问题</td>
             <td colspan="9">
                 <textarea type="textarea" class="form-control" name=""  cols="30" rows="10"></textarea>
             </td>

         </tr>
       </tbody>
   </table>
   <table width="100%" class="table ">
       <caption>维修员信息</caption>
        <tbody>
         <tr>
             <td>负责人</td>
             <td>principal</td>
         </tr>
         <tr>
             <td>维修过程处理</td>

             <td >
                 <textarea type="textarea" class="form-control" name=""  cols="30" rows="10"></textarea>
             </td>
         </tr>

         <tr>
             <td>维修心得(问题概括)</td>
             <td >
                 <textarea type="textarea" class="form-control" name=""  cols="30" rows="10"></textarea>
             </td>
         </tr>
        <tr>

            <td><button  class="btn btn-success" type="submit">提交</button> </td>
            <td><button  class="btn btn-success" type="submit">完成</button> </td>
        </tr>
       </tbody>
   </table>
   </form>

   <script src="<%=basePath%>jsp/myjsp/js/terepair.js"></script>
</body>
</html>
