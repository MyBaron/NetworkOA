/**
 * Created by baron on 17-9-11.
 */

var ue;
$(document).ready(function (){


    $("#mytext").css("min-height","400px");

});


function altertext(id,base){

    //ajax获取数据

    //修改标题
    $("#myModalLabel").text("修改");

    var path=base+"log/work/"+id+".do";
    $.ajax({
        url : path,
        success : function (data) {
            $("#hiddenId").val(id);

            $("#text").html(data);

        }


    });



    $("#myModal").modal("show");

}