/**
 * Created by Administrator on 2017/5/18.
 */



$(document).ready(function () {

    var oMasonry=document.getElementById("masonry");
    var totle=20;
    $.get("../../../photo/get.do",totle,function (data) {
          var sum=Number(data);
          k(sum);
    });


    var mymasonry=function() {
        alert("欢迎～");
        var $container = $('#masonry');
        $container.imagesLoaded(function() {

            $container.masonry({
                itemSelector: '.box',
                columnWidth: 20
               // animate:true ,  // 布局重排动画。默认：false
                //singleMode: true

            });
        });
    };

    var k=function (sum) {

        for( var i=sum;i>0;i--){

            var newDiv=document.createElement("div");
            var newA=document.createElement("a");
            var newImg=document.createElement("img");
             newDiv.setAttribute("class","box");
            newA.setAttribute("data-lightbox","network");
            newA.href="../mypicture/images/"+i+".jpg";
            newImg.src="../mypicture/images/"+i+".jpg";
            newA.appendChild(newImg);
            newDiv.appendChild(newA);
            oMasonry.appendChild(newDiv);

        }
        mymasonry();

    };


    k();





    //弹出一个iframe层
    $('#addPicture').on('click', function(){
        layer.open({
            type: 2,
            title: '上传照片',
            offset: '100px',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['1000px' , '600px'],
            content: 'upload.html'
        });
    });

    $('#refresh').on('click',function () {

        window.location.href="picture.jsp"
    })

});






