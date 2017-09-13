/**
 * Created by baron on 17-8-26.
 */





var basepath;
//表体数据
var toolListData;
//保存选择的树节点
var treePoint;
//选择的数据
var selected=[];
$(document).ready(function () {
    basepath=$("#basepath").val();
    tool.init();

});
//表单头
var tableHead;

var tool={
    init : function () {
        mytree = function(){
            this.tree=null;
            builView(this);
        };


        var builView=function(me){

            //树列表
            $("#myjstree").jstree({
                'core' : {
                    'data' : function (node,cb) {
                        var data;
                        $.ajax({
                            url: basepath + "tool/tree.do",
                            data: {
                                id: node.id
                            },
                            type: "post",
                            success: function (r) {
                                data = JSON.parse(r);
                                me.data=data;console.log(data);
                                cb(data);
                            }
                        });
                    }
                }
            });


            $("#myjstree").on("select_node.jstree",function (e,data) {
                console.log("点击了树节点");
                treePoint=data;
                tool.getData(data,e);
            });

            me.tree=$("#myjstree").jstree(true);

        };
        mytree();

        //-------------------------------------------------------------------------

        //绑定按钮
        $("#print").on("click",toollist.print);
        $("#add").on("click",toollist.add);
        $("#edit").on("click",toollist.edit);
        $("#del").on("click",toollist.del);
        $("#treeAdd").on("click",toollist.treeAdd());
        $("#treeDelete").on("click",toollist.treeDelete());


    },
    getData : function (data,e) {
        //获取数据 写到表单中
        console.log("我获取到的id"+data.node.id);

        //通过ajax获取数据
        $.ajax({
            url : basepath+ "tool/get/"+data.node.id+".do",
            success : function (r) {
                if(r){
                    toollist.getData(r);
                }
            }
        })
    }

};



var toollist={


    getData : function (r) {

        var data=JSON.parse(r);
        //构建表单
        //构建头
        tableHead='<table class="table  table-bordered table-hover "> ' +
            '<thead> ' +
            '<tr>' +
            '<th><input type="checkbox" class="selectAll"></th> ' +
            '<th>名称</th>' +
            ' <th>位置</th> ' +
            ' <th>编码</th> ' +
            '<th>总数量</th>' +
            ' <th>现存数量</th>' +
            ' <th>备注</th>' +
            ' <th>更新时间</th>' +
            ' </tr> ' +
            '</thead> <tbody >';

        var mytable=tableHead;
        //表单体
        toolListData=[];
        var mybody="";
        for(var i=0;i<data.length;i++){

            if(!data[i].number){
                data[i].number="";
            }
            if(!data[i].remark){
                data[i].remark="";
            }
            toolListData.push(data[i]);
            //在select 添加一个标记
            mybody+='<tr><td><input type="checkbox" class="myselect" tag="'+i+'" ></td>';
            mybody+='<td>'+data[i].name+' </td>' +
                '<td>'+data[i].location+'</td>' +
                '<td>'+data[i].number+'</td>' +
                '<td>'+data[i].sum+'</td>' +
                '<td>'+data[i].re_sum+'</td>' +
                '<td>'+data[i].remark+'</td>' +
                '<td>'+data[i].make_time+'</td>' +
                '</tr>';

        }

        mytable+=mybody;
        mytable+='</tbody></table>';

        $("#mydata").html(mytable);

        //全选
        $('.selectAll').click(function () {
           //获取该选框的状态  jq是属性组
            var mystatus=$('.selectAll')[0].checked;

            //修改每一个选择框
            $('.myselect').each(function (index,element) {
                element.checked=mystatus;
            })

        });


        //点击的表单行时，点击选项
        $('td').click(function (e) {
            var $select=$(e.target).parents("tr").find(".myselect")[0];
            $select.checked=!$select.checked;
        });

    },
    print : function () {
        var treeP=treePoint;
        if(!treeP){
            alert("请选择位置");
            return false;
        }
        console.log("我选了id为"+treeP.node.id+"位置的数据");

        //查看选择了哪些选项
        Model.getSelect();

        //建立模态框
        Model.createHeadAndEnd("导出","导出");
        Model.createPrint(selected);
        $("#myModal").modal("show");

        //添加点击事件
        $("#checkButton").off().on("click",function () {
            console.log("点击打印");
            //DOTO
        })
        
    },
    add : function () {
        var treeP=treePoint;
        if(!treeP){
            alert("请选择位置");
            return false;
        }

        //建立模态框
        Model.createHeadAndEnd("添加","添加");
        Model.createAdd(null,'tool/put.do',treeP.node.id);
        $("#myModal").modal("show");

    },
    edit :function () {
        var treeP=treePoint;
        //获取到选择的数据
        Model.getSelect();
        if(!treeP){
            alert("请选择位置");
            return false;
        }
        if(selected.length===0){
            alert("请选择数据");
            return false;
        }
        if(selected.length>=2){
            alert("只能选择一项");
            return false;
        }


        console.log("选取的位置"+treeP.node.id+"  "+treeP.node.text);

        //建立模态框
        Model.createHeadAndEnd("修改","修改");
        Model.createAdd(selected[0],"tool/alter.do",treeP.node.id);
        $("#myModal").modal("show");
    },
    del :function () {
        var treeP=treePoint;
        //获取到选择的数据
        Model.getSelect();
        if(!treeP){
            alert("请选择位置");
            return false;
        }
        if(selected.length===0){
            alert("请选择数据");
            return false;
        }
        if(selected.length>=2){
            alert("只能选择一项");
            return false;
        }

        if(confirm("确定要删除该数据吗？删除后无法恢复噢～")){
            $.ajax({
                url: basepath + "tool/delete.do",
                data: {
                    id : selected[0].id
                },
                type : 'post',
                success : function (r) {
                    var data=JSON.parse(r);
                    if(data.message==='success'){
                        alert("成功");
                        location.reload();
                    }else {
                        alert(data.message);
                        location.reload();
                    }
                }
            });
        }


    },

    //树列表的操作
    treeAdd :function () {
        var treeP=treePoint;
        if(treeP){
            console.log("获取到的树节点"+treeP.node.id+" 名称 "+treeP.node.text);
        }else {
            console.log("新添加一个仓库");
        }
    },
    treeDelete:function () {


    }


};


var Model;
Model = {
    createHeadAndEnd: function (text, btn) {
        $("#myModalLabel").text(text);
        $("#checkButton").text(btn);
    },
    createPrint: function (data) {
        var mytable = '<table class="table  table-bordered table-hover "> ' +
            '<thead> ' +
            '<tr>' +
            '<th>名称</th>' +
            ' <th>位置</th> ' +
            '<th>总数量</th>' +
            ' <th>现存数量</th>' +
            ' <th>备注</th>' +
            ' <th>更新时间</th>' +
            ' </tr> ' +
            '</thead> <tbody >';

        var mybody = "";
        for (var i = 0; i < data.length; i++) {
            mybody += '<td>' + data[i].name + ' </td>' +
                '<td>' + data[i].location + '</td>' +
                '<td>' + data[i].sum + '</td>' +
                '<td>' + data[i].re_sum + '</td>' +
                '<td>' + data[i].remark + '</td>' +
                '<td>' + data[i].make_time + '</td>' +
                '</tr>';
        }
        mytable += mybody;
        $("#mytext").html(mytable);
    },
    createAdd: function (data, url, treeid) {

        var id=0;

        $("#mytext").html('<div class="alert alert-info alert-dismissable"> ' +
            '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">' +
            ' &times;</button> 请正确填写数据' +
            '</div>' +
            '<div class="form-group tebill">' +
            '<label for="name" class="col-sm-3 control-label">名称</label> ' +
            '<div class="col-sm-9 "> ' +
            '<input type="text" class="form-control" id="name" name="name"  placeholder="请输入名称" required/>' +
            ' </div> ' +
            '</div>' +
            '<div class="form-group tebill">' +
            '<label for="number" class="col-sm-3 control-label">编码</label> ' +
            '<div class="col-sm-9 "> ' +
            '<input type="text" class="form-control" id="number" name="number"  placeholder="请输入编码" /> ' +
            '</div> ' +
            '</div>' +
            '<div class="form-group tebill"> ' +
            '<label for="sum" class="col-sm-3 control-label">总数量</label>' +
            '<div class="col-sm-9 ">' +
            '<input type="text" class="form-control" id="sum" name="sum" placeholder="请输入数量"  required/> ' +
            '</div>' +
            '</div>' +
            '<div class="form-group tebill"> ' +
            '<label for="remark" class="col-sm-3 control-label">备注</label>' +
            '<div class="col-sm-9 ">' +
            '<input type="text" class="form-control" id="remark" name="remark"  placeholder="请输入备注" /> ' +
            '</div>' +
            '</div>');

        if (data) {
            console.log("修改 " + data.name);
            $("#name").val(data.name);
            $("#number").val(data.number);
            $("#sum").val(data.sum);
            $("#remark").val(data.remark);
            id=data.id;
        }

        $("#checkButton").off().on('click',function () {




            $.ajax({
                url: basepath + url,
                data: {
                    name: $("#name").val(),
                    number: $("#number").val(),
                    sum: $("#sum").val(),
                    remark: $("#remark").val(),
                    id : id,
                    location_id : treeid
                },
                type : 'post',
                success : function (r) {
                    var data=JSON.parse(r);
                    if(data.message==='success'){
                        alert("成功");
                        location.reload();
                    }else {
                        alert(data.message);
                        location.reload();
                    }
                }
            });




        });



    },
    getSelect: function () {
        //遍历选择的数据，把数据填入到selected
        selected = [];
        $('#mydata .myselect').each(function (index, item) {
            if (item.checked) {
                var tag = $(item).attr('tag');
                selected.push(toolListData[tag]);
            }
        });
    }
};