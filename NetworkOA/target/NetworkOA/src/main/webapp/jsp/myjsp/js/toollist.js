/**
 * Created by Administrator on 2017/5/16.
 */


$(function(){
    $("div.holder").jPages({
        containerID : "itemContainer",
        previous : "←",
        next : "→",
        perPage : 10,
        delay : 100
    });
});



function fix(path,tool_id,tool_name,tool_sum,tool_principal){

    var newpath=path+tool_id;

    layer.open({
        type: 1,
        area: ['700px', '500px'],
        shadeClose: true, //点击遮罩关闭
        content: '<form method="post" action="'+newpath+'">'+
        '<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">'+
        '<tbody><tr><td>工具名称</td><td><div class="col-lg-5" style="padding-left: 0" >'+
        '<label><input type="text"  value="'+tool_name+'"  class="form-control" required="required" name="tool_name"></label>'+
        '</div></td></tr><tr><td> 数量</td><td><div class="col-lg-5" style="padding-left: 0" >'+
        '<label><input type="text"  value="'+tool_sum+'" name="tool_sum"  class="form-control"  required="required" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'+');}).call(this)" onblur="this.v();">'+
        '</label></div></td> </tr> <tr> <td>负责人 </td> <td> <div class="col-lg-5" style="padding-left: 0" >'+
        '<label> <input type="text" value="'+tool_principal+'" class="form-control" name="tool_principal"> </label> </div>'+
        '</td> </tr> <tr> <td></td> <td> <div style="padding-left: 0" > <button type="submit" class="btn btn-success">确认修改</button>'+
       ' </div>'
    });
}

function  del(path,id) {
    layer.confirm('你确定要删除吗？', {
             area:['400px','300px'],
            btn: ['当然啦','误点了'] //按钮
        }, function(){
            layer.msg('删除成功', {icon: 2});
            window.location.href=path+id;
        }
    );
}