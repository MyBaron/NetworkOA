/**
 * Created by baron on 17-8-17.
 */


var getbasepath='';


$(document).ready(function () {
    page.init();
});

var page={
    init : function () {

        page.btn();

    },
    btn :function () {
        $("#button1").on("click",tool.fix);
        $("#button2").on("click",tool.check);
    }
};



var tool={
    fix : function (a) {
        $("#myModal").modal('show');

    },
    check:function (e) {
        if(e) {
            e.stopPropagation();
        }

        createCheckBill();
        $("#myModal2").modal('show');



        //构建查询表单
        function createCheckBill() {
            console.log("构建表");
            //头
            $("#myModalLabel2").text("查询报修单");
            //文本框内容
            $("#mytext").html('<div class="alert alert-info alert-dismissable"> ' +
                '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">' +
                ' &times;</button> 请正确填写单号或报修人姓名' +
                '</div>' +
                '<div class="form-group tebill">' +
                '<label for="checkName" class="col-sm-3 control-label">单号/报修人</label> ' +
                '<div class="col-sm-9 "> ' +
                '<input type="text" class="form-control" id="checkName" name="checkName" placeholder="请输入单号或报修人姓名" required/> </div> ' +
                '</div>' +
                '<div class="form-group tebill"> ' +
                '<label for="checkPassword" class="col-sm-3 control-label">密码</label>' +
                '<div class="col-sm-9 ">' +
                '<input type="text" class="form-control" id="checkPassword" name="checkPassword" placeholder="请输入名字" required/> ' +
                '</div> </div>');

            $("#checkButton").off().text("查询").on("click",tool.getData);
        }

    },
    getData : function (e) {
        if(e) {
            e.stopPropagation();
        }
        var checkName=$("#checkName").val();
        var checkPassword=$("#checkPassword").val();
        //获取路径
         getbasepath=$("#mybasepath").val();
        $.ajax(getbasepath+"font/checkTeBill.do",{
            data : JSON.stringify({
                Name : checkName,
                Password : checkPassword
            }),
            type : "POST",
            contentType : 'application/json',
            success : function (d) {
                if(d){
                    var json=JSON.parse(d);
                    if(json.message==="成功"){
                        tool.chooseBill(json.data);
                    }else {
                        alert("查询失败，请正确填写");
                    }

                }
            }

        });


        console.log(checkName);
        console.log(checkPassword);

    },
    chooseBill : function(data){

        console.log("触发我了");
        //头
        $("#myModalLabel2").text("报修单");

        //构建一下表单头
        var mytable='<table class="table  table-bordered table-hover"> ' +
            '<thead> ' +
            '<tr> <th>单号</th> ' +
            '<th>报修人</th>' +
            ' <th>地址</th> ' +
            '<th>时间</th>' +
            ' <th>是否完成</th>' +
            ' </tr> ' +
            '</thead> <tbody>';

        var mybody="";

        //文本框内容
        for(var i=0;i<data.length;i++){
            var isdeal='';
            if(data[i].is_deal===0){
                isdeal="未完成";
            }else {
                isdeal="已完成";
            }

            mybody+='<tr><td>' +
                +data[i].te_repair_id+' </td>' +
                '<td>'+data[i].te_repair_name+'</td>' +
                '<td>'+data[i].te_repair_address+'</td>' +
                '<td>'+data[i].te_repair_time+'</td>' +
                '<td>'+isdeal+'</td></tr>';

        }
        mytable+=mybody;
        mytable+='</tbody></table>';

        $("#mytext").html(mytable);

        //获取点击的表单id
        $('td').click(function (e) {

            var tr=$(e.target).parents("tr").find("td").first().html();
            if(confirm("你确定要查看第"+tr+"号报修单吗？")){
                location.href=getbasepath+"te_repair/checkBill.do?id="+tr;
            }
           /* alert($(tr).find("td").first().html());*/
        });

        $("#checkButton").off().text("返回查询").click(tool.check);
    }

};


