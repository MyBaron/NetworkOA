/**
 * Created by baron on 17-6-2.
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
        offset: '100px',
        area: ['700px', '500px'],
        shadeClose: true, //点击遮罩关闭
        content: '<form method="post" action="'+newpath+'">'+
        '<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">'+
        '<tbody><tr><td>姓名</td><td><div class="col-lg-5" style="padding-left: 0" >'+
        '<label><input type="text"  value="'+tool_name+'"  class="form-control" required="required" name="name"></label>'+
        '</div></td></tr><tr><td> 账号</td><td><div class="col-lg-5" style="padding-left: 0" >'+
        '<label><input type="text"  value="'+tool_sum+'" name="account"  class="form-control"  required="required" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'+');}).call(this)" onblur="this.v();">'+
        '</label></div></td> </tr> <tr> <td>密码 </td> <td> <div class="col-lg-5" style="padding-left: 0" >'+
        '<label> <input type="password" value="'+tool_principal+'" class="form-control" name="password"> </label> </div>'+
        '</td> </tr> <tr> <td></td> <td> <div style="padding-left: 0" > <button type="submit" class="btn btn-success">确认修改</button>'+
        ' </div>'
    });
}
