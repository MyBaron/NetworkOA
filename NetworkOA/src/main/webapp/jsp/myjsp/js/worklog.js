/**
 * Created by baron on 17-9-11.
 */

var ue;
$(document).ready(function (){


    $("#mytext").css("min-height","400px");

    ue= UE.getEditor('container');
});


function altertext(id,base){

    //ajax获取数据

    //修改标题
    $("#myModalLabel").text("修改");

    var path=base+"log/work/"+id+".do";
    var getData;
    $.ajax({
        url : path,
        success : function (data) {
            $("#hiddenId").val(id);
            getData=data;
            //$("#container").val(data);
        }

    });

    var myue=UE.getContent();
    myue.ready(function () {
        myue.setContent(getData);
    });

    $("#myModal").modal("show");

}