
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

    <!--layui-->
    <link href="<%=basePath%>jsp/myjsp/layui-v1.0.9_rls/layui/css/layui.css" rel="stylesheet" media="all">



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
                <h1 class="page-header">签到表</h1>

            </div>
        </div>
        <div class="row">
            <div class=" col-lg-12 ">
                <!--查询某月某天-->
                <div class="col-lg-3" style="border-right:black solid ">
                    <form action="<%=basePath%>sign/getDay.do" method="post">
                        <div class="layui-inline col-lg-7 ">
                            <input class="layui-input" placeholder="查询某一天" name="day" onclick="layui.laydate({elem: this, festival: false})">
                        </div>
                        <div class="col-lg-2 ">
                          <button type="submit"   class="btn btn-info">查询</button>
                        </div>
                    </form>
                </div>
                <!--查询某月某天-->
                <!--查询某个人某月-->
                <div class="col-lg-4">
                    <form action="<%=basePath%>sign/getName.do" method="post">
                       <div class="col-lg-5">
                           <select  name="name" class="form-control">
                              <c:forEach var="work" items="${AssistantWorking}">
                                  <option><c:out value="${work.assistant_name}"/></option>
                              </c:forEach>

                           </select>
                       </div>
                        <div class="layui-inline col-lg-5">
                            <input class="layui-input" placeholder="查询个人某月" name="month" onclick="layui.laydate({elem: this, istime:false,format:'YYYY-MM'})">
                        </div>
                        <div class="col-lg-2 ">
                            <button type="submit"   class="btn btn-info">查询</button>
                        </div>
                    </form>
                </div>
                <!--查询某个人某月-->
            </div>
        </div>
        <!--表单信息-->
        <div class="row ">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" >
                            ${message}
                    </div>

                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" >
                            <!-- 表单头 -->
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>签到日期</th>
                                <th>上班时间</th>
                                <th>下班时间</th>
                                <th>时长</th>
                                <th>签到人</th>
                                <th>签到时间</th>
                            </tr>
                            </thead>
                          <!--表格体-->
                            <tbody id="itemContainer">
                              <c:forEach var="as" items="${sign}">
                              <tr>
                                  <th><c:out value="${as.myname}"/></th>
                                  <th>
                                      <fmt:formatDate value="${as.sign_time}" pattern="yyyy-MM-dd"/>
                                  </th>
                                  <th><c:out value="${as.sign_begin}"/></th>
                                  <th><c:out value="${as.sign_end}"/></th>
                                  <th>
                                     <c:out value="${as.longtime}"/>
                                  </th>
                                  <th><c:out value="${as.account_name}"/></th>
                                  <th>
                                      <fmt:formatDate value="${as.time}" pattern="yyyy-MM-dd HH:mm"/>
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
        <!--签到信息-->
        <div class="row" >
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading" id="myhead">
                        签到
                    </div>

                <div class="panel-body">
                    <form method="post" action="<%=basePath%>sign/putData.do" onsubmit="return check()">
                    <table width="100%" class="table table-striped table-bordered table-hover" >
                        <!-- 表单头 -->
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>值</th>
                        </tr>
                        </thead>
                        <tbody>
                          <tr>
                              <td>名称</td>
                              <td>
                                  <select  name="name" class="form-control">
                                      <c:forEach var="work" items="${AssistantWorking}">
                                      <option><c:out value="${work.assistant_name}"/></option>

                                      </c:forEach>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>日期</td>
                              <td>
                                  <input class="layui-input" placeholder="日期" name="day" required onclick="layui.laydate({elem: this, festival: false,min:laydate.now(),max:laydate.now()})">
                              </td>
                          </tr>
                          <tr>
                              <td>上班时间</td>
                              <td>
                                   <div class="col-lg-2">

                                           <select name="begin_h" id="begin_h" class="form-control">
                                               <option>8</option>
                                               <option>9</option>
                                               <option>10</option>
                                               <option>11</option>
                                               <option>12</option>
                                               <option>13</option>
                                               <option>14</option>
                                               <option>15</option>
                                               <option>16</option>
                                               <option>17</option>
                                               <option>18</option>
                                               <option>19</option>
                                               <option>20</option>
                                               <option>21</option>
                                               <option>22</option>
                                           </select>

                                   </div> <div class="col-lg-1">:</div>
                                  <div class="col-lg-2">

                                      <select name="begin_m" id="begin_m" class="form-control">
                                          <option>00</option>
                                          <option>30</option>
                                      </select>

                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>下班时间</td>
                              <td>
                                  <div class="col-lg-2">

                                      <select name="end_h" id="end_h" class="form-control">
                                          <option>8</option>
                                          <option>9</option>
                                          <option>10</option>
                                          <option>11</option>
                                          <option>12</option>
                                          <option>13</option>
                                          <option>14</option>
                                          <option>15</option>
                                          <option>16</option>
                                          <option>17</option>
                                          <option>18</option>
                                          <option>19</option>
                                          <option>20</option>
                                          <option>21</option>
                                          <option>22</option>
                                      </select>

                                  </div> <div class="col-lg-1">:</div>
                                  <div class="col-lg-2">

                                      <select name="end_m"  id="end_m" class="form-control">
                                          <option>00</option>
                                          <option>30</option>
                                      </select>

                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>时长</td>
                              <td>
                                  <span id="longtime">请正确填写时间段</span>
                                  <input type="hidden" name="longtime" value="" id="inlongtime"/>
                                  <div class="col-lg-2">
                                      <button class="btn-info btn" type="button" id="btntime" onclick="judge()">计算时长</button>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td></td>
                              <td><button class="btn-info btn">签到</button> </td>
                          </tr>
                        </tbody>
                    </table>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper

<!-- jQuery -->
<script src="<%=basePath%>jsp/myjsp/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/ajax.js"></script>
<script src="<%=basePath%>jsp/myjsp/jPages-master/js/jPages.min.js"></script>
<script src="<%=basePath%>jsp/myjsp/layer-v3.0.3/layer/layer.js"></script>

<script src="<%=basePath%>jsp/myjsp/layui-v1.0.9_rls/layui/layui.js"></script>
<script src="<%=basePath%>jsp/myjsp/js/sign.js"></script>


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
