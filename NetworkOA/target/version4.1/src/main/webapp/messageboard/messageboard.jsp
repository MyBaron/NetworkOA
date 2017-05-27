<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言墙</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="messageboard/border.css"  />
<link rel="stylesheet" type="text/css" href="messageboard/background.css"  />
<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
   <script >
  
  //成功登陆后隐藏登录和注册
  window.onload=function(){
	   var oLogin=document.getElementById("login");
	   var oRe=document.getElementById("re");
	   var oName=document.getElementById("name");
	   var oQuit=document.getElementById("quit");
	    <% if(request.getSession().getAttribute("login")!=null){
	       %>
	       oLogin.style.display="none";
	       oRe.style.display="none";
	       oName.innerHTML="昵称:<%= request.getSession().getAttribute("login")%>";
	       oQuit.style.display="block";
	       
	   <%
	     
	    } else{ %>
	    oLogin.style.display="block";
	    oRe.style.display="block";
	    oName.innerHTML="";
	    oQuit.style.display="none";
	    
	    
	    <%}%> 
      
  }
  
  
  
  </script>
  <body style="background-color:#CCC">

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Friends</a>
    </div>
    <div class="col-lg-10">
        <ul class="nav navbar-nav">
            <li ><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
            <li ><a href="${pageContext.request.contextPath}/quiz/quiz.html">测试区</a></li>
            <li>
               <a href="#">分享区</a>
            </li>
            <li class="active">
               <a href="#">留言墙</a>
            </li>
            <li>
               <a href="#">黑科技</a>
            </li>
           
        </ul>
        <ul class="navbar-right nav navbar-nav"  >
            <li id="login" class="lo">
               <a href="../login.jsp">登录</a>
            </li>
            <li id="re" class="lo">
               <a href="#">注册</a>
            </li>
             <li id="nameLi">
                <a href="#" id="name"></a>
             </li>
             <li id="quit" style="display:none">
                 <a href="${pageContext.request.contextPath}/AdminServlet?method=loginOut">退出</a>
             </li>
        </ul>
    </div>
    </div>
	
</nav>
<div class="holder col-lg-offset-5" >
    <div class="bullet"></div>
    <div class="line_one"></div>
    <div class="line_two"></div>
    <div class="pholder_one"></div>
</div>
<div id="border" class="col-lg-7 col-lg-offset-3" style="background:url(messageboard/wood_pattern.png) " >
      <h1 align="center"> 留言墙</h1>

          <ul>
			  <li>
			    <a href="#">
			      <h2>Title 1</h2>
			      <p>欢迎欢迎</p>
			    </a>
			  </li>
			  <li>
			    <a href="#">
			      <h2>Title 2</h2>
			      <p>再见再见</p>
			    </a>
			  </li>
			</ul>

</div>
</body>
</html>
