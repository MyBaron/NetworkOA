/**
 * Created by Administrator on 2017/4/18.
 */

$(window).load(function () {

//初始化
    ajax("get","myServlet","method=getMessages",function (data) {
        var json=JSON.parse(data);
        for(var i=0;i<=json.length;i++){
            addElement(json[i].message_time,json[i].id,json[i].message_test,json[i].user_name,false);
        }
    });

    if(getName!=null&&getName!=""){
        checkIfName(getName);
        b=true;
    }

    //$(window).scroll(OconRight());





//运动留言板


    var varTimer = null;
    /*
     //在ie下用currentStyle，在火狐下用getComputedStyle  获取非行间的样式
     function getStyle(obj,attr) {
     if(obj.currentStyle){
     return obj.currentStyle[attr];
     }else return getComputedStyle(obj, false)[attr];

     }

     */


    function OconRight() {
        var OconRight=document.getElementsByClassName("conRight");
        //document.body.scrollTop  兼容谷歌浏览器
        //document.documentElement.scrollTop 兼容IE浏览器
        //滚动点离浏览器顶部的距离
        var varTop =document.documentElement.scrollTop||document.body.scrollTop;
        startMove(varTop,7);


    }

    function startMove(destination, speed) {
        var OconRight = document.getElementsByClassName("conRight")[0];
        //清空一个定时器
        clearInterval(varTimer);
        //开启一个定时器
        varTimer = setInterval(function () {
            //div 一开始离开目标的距离除以speed div 移动的速度 div距离越近 速度越少
            var varSpeed = (destination - OconRight.offsetTop) / speed;
            //Round 是四舎五入 ceil向上取整 floor 向下取整
            varSpeed = varSpeed > 0 ? Math.ceil(varSpeed) : Math.floor(varSpeed);

            //到达目的地 消除定时器
            if (OconRight.offsetTop == destination) {
                clearInterval(varTimer);

            } else {

                //移动
                //noinspection JSAnnotator
                var top = OconRight.offsetTop + varSpeed + 'px';
                OconRight.setAttribute('style', "top:" + top);

            }


        }, 30)


    }


    function checkIfName(getName) {
       // var oInp = document.getElementsByClassName("inp")[0];
        var oMessage = document.getElementById("messageMain");
        var oMe=document.getElementById("me");
        oMe.innerHTML=getName;



        oMessage.removeAttribute('readOnly');

    }






});


/* 滚动到底层自动加载
 window.onscroll = function(){
 var t = document.documentElement.scrollTop || document.body.scrollTop;  //离上方的距离
 var h =window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight; //可见宽度
 if( t >= document.documentElement.scrollHeight -h ) {
 toajax();
 }

 OconRight();
 }*/

var b=false;
function onbutton() {
    var oMessage = document.getElementById("messageMain");
    var oMe=document.getElementById("me");
    if(!b){
        alert("请先登录哟");
    }
    if(oMessage.value!=null&&oMessage.value!="")
    {

        ajax("post","myServlet","method=putMessages&message_test="+oMessage.value+"&message_time="+getNowFormatDate(),function (data) {
            var Json=JSON.parse(data);
           if(Json.length!=0){
               addElement(json[0].message_time,json[0].id,json[0].message_test,json[0].user_name,true);
           }
        })
    }

}

function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + date.getHours() + seperator2 + date.getMinutes()
        + seperator2 + date.getSeconds();
    return currentdate;
}


//加载更多
function getMore() {
    ajax("get","myServlet?method=getMessages&getTen=true",null,function (data) {
        var json=JSON.parse(data);
        for(var i=0;i<=json.length;i++){
            addElement(json[i].message_time,json[i].id,json[i].message_test,json[i].user_name,false);

        }
    } )
}


//添加标签
function addElement(H2, P1, P2, P3,bool) {
    var oUl = document.getElementById("ul");
    var li = document.createElement('li');
    var div = document.createElement('div');
    var h2 = document.createElement('h2');
    var p1 = document.createElement('p');
    var p2 = document.createElement('p');
    var p3 = document.createElement('p');

    div.setAttribute('class', 'mydiv');
    h2.setAttribute('class', 'lih2');
    p1.setAttribute("class", "title");
    p2.setAttribute("class", "message");
    p3.setAttribute("class", "name");

    div.appendChild(h2);
    div.appendChild(p1);
    div.appendChild(p2);
    div.appendChild(p3);
    li.appendChild(div);


    h2.innerHTML = H2;
    p1.innerHTML = P1;
    p2.innerHTML = P2;
    p3.innerHTML = P3;

    if(bool&&oUl.children[0]){
        oUl.insertBefore(li,oUl.children[0]);
    }else{
        oUl.appendChild(li);
    }

}