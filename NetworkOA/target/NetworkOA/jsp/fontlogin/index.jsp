<%--
  Created by IntelliJ IDEA.
  User: baron
  Date: 17-8-19
  Time: 下午2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/newindex.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<div class="intro-header">
    <div class="center" align="center" >

        <h2 id="myfont">新华网络中心报修</h2></br>
        <h5>快，只有更快</h5>
        <button id="button1" type="button" class="btn btn-info btn-lg ">  报 修  </button>
        <button id="button2" type="button" class="btn btn-info btn-lg  ">  查 单  </button>



    </div>
</div>

<!--填写报修单的-->
<div class="modal fade" id="myModal"  aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    报修单
                </h4>
            </div>
            <form  action="<%=basePath%>font/createTeBill.do" method="post">
            <div class="modal-body">
                <div class="alert alert-info">
                    <a href="#" class="close" data-dismiss="alert">
                        &times;
                    </a>
                    <strong>注意！</strong>请正确填写信息。
                </div>


                    <div class="form-group tebill">
                        <label for="te_repair_name" class="col-sm-2 control-label">名字</label>
                        <div class="col-sm-10 ">
                            <input type="text" class="form-control" id="te_repair_name" name="te_repair_name"
                                   placeholder="请输入名字" required>
                        </div>
                    </div>
                    <div class="form-group tebill">
                        <label for="te_repair_phone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="te_repair_phone" name="te_repair_phone"
                                   placeholder="请输入联系电话" required>
                        </div>
                    </div>
                    <div class="form-group tebill">
                        <label for="te_repair_address" class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="te_repair_address" name="te_repair_address"
                                   placeholder="请输入地址" required>

                        </div>
                    </div>
                    <div class="form-group tebill">
                        <label for="te_repair_type" class="col-sm-2 control-label">报修类型</label>
                        <div class="col-sm-10">
                            <select id="te_repair_type" class="form-control" name="te_repair_type">
                                <option>电脑问题</option>
                                <option>打印机问题</option>
                                <option>网络问题</option>
                                <option>其他问题</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group tebill">
                        <label for="te_repair_question" class="col-sm-2 control-label">报修问题</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="te_repair_question"
                                   placeholder="请输入报修问题" required    name="te_repair_question"/>
                        </div>
                    </div>
                    <div class="form-group tebill">
                        <label for="te_repair_message" class="col-sm-2 control-label">备注</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="te_repair_message"
                                   placeholder="请输入名字"    required name="te_repair_message"  />
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="submit" class="btn btn-primary">
                    提交报修单
                </button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<!--查单-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body" id="mytext">在这里添加一些文本</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="checkButton"  class="btn btn-primary">查询</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<input hidden id="mybasepath" value="<%=basePath%>"/>
<script src="../myjsp/vendor/jquery/jquery.min.js"></script>
<script src="js/newindex.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
