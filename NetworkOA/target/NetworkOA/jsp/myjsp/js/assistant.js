/**
 * Created by baron on 17-6-3.
 */


$(function(){
    $("div.holder").jPages({
        containerID : "itemContainer",
        previous : "←",
        next : "→",
        perPage : 15,
        delay : 100
    });
});



function add(path) {

    layer.open({
        type: 1,
        area: ['1000px', '500px'],
        shadeClose: true, //点击遮罩关闭
        contenttype: 1,
        area: ['1000px', '500px'],
        shadeClose: true, //点击遮罩关闭
        content:'<form method ="post" action="'+path+'">'+
        '<table width="100%" class="table table-striped table-bordered table-hover">'+
        '   <caption>修改</caption>'+
        '<thead>'+
        '<tr>'+
        '<th>名称</th>'+
        '<th>值</th>'+
        '</tr>'+
        '</thead>'+
        '<tbody>'+
        '<tr>'+
        '<td>姓名</td>'+
        '<td><input type="text" value="" name="name" required="required"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>专业</td>'+
        '<td><input type="text" value="" name="profession"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>宿舍</td>'+
        '<td><input type="text" value="" name="grade"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>生日</td>'+
        '<td><input type="text" value="" name="birthday"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>电话号码</td>'+
        '<td><input type="text" value="" name="phone"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>学号</td>'+
        '<td><input type="text" value="" name="number"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>状态</td>'+
        '<td>'+
        '<label class="checkbox-inline">'+
        '<input type="radio" name="working"  value="1" checked> 在任'+
        '</label>'+
        '<label class="checkbox-inline">'+
        '<input type="radio" name="working"  value="0" > 退休'+
        '</label>'+
        '</td>'+
        '</tr>'+
        '<tr>'+
        '<td></td>'+
        '<td><button  class="btn btn-success" type="submit">提交</button> </td>'+
        '</tr>'+
        '</tbody>'+
        '</table>'+
        '</form>'
    })
}


function fix(path,assistant_id,assistant_name,assistant_profession,assistant_grade,assistant_birthday,assistant_phone,assistant_number,assistant_working){

    var newpath=path+assistant_id;

    if(assistant_working==1){

        layer.open({
            type: 1,
            area: ['1000px', '500px'],
            shadeClose: true, //点击遮罩关闭
            content:'<form method ="post" action="'+newpath+'">'+
            '<table width="100%" class="table table-striped table-bordered table-hover">'+
            '   <caption>修改</caption>'+
            '<thead>'+
            '<tr>'+
            '<th>名称</th>'+
            '<th>值</th>'+
            '</tr>'+
            '</thead>'+
            '<tbody>'+
            '<tr>'+
            '<td>姓名</td>'+
            '<td><input type="text" value="'+assistant_name+'" name="name" required="required"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>专业</td>'+
            '<td><input type="text" value="'+assistant_profession+'" name="profession"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>宿舍</td>'+
            '<td><input type="text" value="'+assistant_grade+'" name="grade"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>生日</td>'+
            '<td><input type="text" value="'+assistant_birthday+'" name="birthday"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>电话号码</td>'+
            '<td><input type="text" value="'+assistant_phone+'" name="phone"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>学号</td>'+
            '<td><input type="text" value="'+assistant_number+'" name="number"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>状态</td>'+
            '<td>'+
            '<label class="checkbox-inline">'+
            '<input type="radio" name="working"  value="1" checked> 在任'+
            '</label>'+
            '<label class="checkbox-inline">'+
            '<input type="radio" name="working"  value="0" > 退休'+
            '</label>'+
            '</td>'+
            '</tr>'+
            '<tr>'+
            '<td></td>'+
            '<td><button  class="btn btn-success" type="submit">提交</button> </td>'+
            '</tr>'+
            '</tbody>'+
            '</table>'+
            '</form>'
        });
    }else {

        layer.open({
            type: 1,
            area: ['1000px', '500px'],
            shadeClose: true, //点击遮罩关闭
            content:'<form method ="post" action="'+newpath+'">'+
            '<table width="100%" class="table table-striped table-bordered table-hover">'+
            '   <caption>修改</caption>'+
            '<thead>'+
            '<tr>'+
            '<th>名称</th>'+
            '<th>值</th>'+
            '</tr>'+
            '</thead>'+
            '<tbody>'+
            '<tr>'+
            '<td>姓名</td>'+
            '<td><input type="text" value="'+assistant_id+'" name="name" required="required"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>专业</td>'+
            '<td><input type="text" value="'+assistant_profession+'" name="profession"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>年级</td>'+
            '<td><input type="text" value="'+assistant_grade+'" name="grade"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>生日</td>'+
            '<td><input type="text" value="'+assistant_birthday+'" name="birthday"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>电话号码</td>'+
            '<td><input type="text" value="'+assistant_phone+'" name="phone"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>学号</td>'+
            '<td><input type="text" value="'+assistant_number+'" name="number"></td>'+
            '</tr>'+
            '<tr>'+
            '<td>状态</td>'+
            '<td>'+
            '<label class="checkbox-inline">'+
            '<input type="radio" name="working"  value="1" > 在任'+
            '</label>'+
            '<label class="checkbox-inline">'+
            '<input type="radio" name="working"  value="0" checked> 退休'+
            '</label>'+
            '</td>'+
            '</tr>'+
            '<tr>'+
            '<td></td>'+
            '<td><button  class="btn btn-success" type="submit">提交</button> </td>'+
            '</tr>'+
            '</tbody>'+
            '</table>'+
            '</form>'
        });
    }


}