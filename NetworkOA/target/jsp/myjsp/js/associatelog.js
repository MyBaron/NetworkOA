/**
 * Created by Administrator on 2017/5/15.
 */
/*
$('#test2').on('click', function(){
    layer.open({
        type: 1,
        area: ['600px', '360px'],
        shadeClose: true, //点击遮罩关闭
        content: '\<\div style="padding:20px;">自定义内容\<\/div>'
    });
});
*/

function butten(text,path,associate_id) {



    var newpath=path+"associate_id="+associate_id;


        layer.open({
            type: 1,
            area: ['600px', '360px'],
            shadeClose: true, //点击遮罩关闭
            content: '<form action='+newpath+'  method="post"><div><textarea class="form-control" name="associate_text" placeholder="金箍棒内容"  rows="3" required="required">'+text+'</textarea></div>' +
            '<div class="text-center"><button type="submit" class="btn btn-success btn-lg">提交</button> </div></form>'
        });



}

function finish(path,associate_id) {
    window.location.href=path+"associate_id="+associate_id;

}