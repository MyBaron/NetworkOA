/**
 * Created by Administrator on 2017/4/10.
 */



var  xmlhttp1,xmlhttp2;
var b1=false,b2=false,b3=false;

var oAccount=document.getElementById("account");
var oAccAttention=document.getElementById("acc");
var oPassword=document.getElementById("password");
var oPad=document.getElementById("pas");
var oSubmit=document.getElementById("submit");


if(window.XMLHttpRequest){
    xmlhttp1=new XMLHttpRequest();
    xmlhttp2=new XMLHttpRequest();
}else{
    xmlhttp1=new ActiveXObject();
    xmlhttp2=new ActiveXObject();
}

//oAccount.onclick=checkAccount();
/*if(first) {
    alert(first);
    oAccount.blur(checkAccount());
}*/
//检测用户名是否已存在
function checkAccount() {

    var cAccount=/^[@.\w]{7,18}$/;

    if(oAccount.value==null||oAccount.value=="") {
        oAccAttention.innerHTML = " 账号不能为空哟~";
        oAccAttention.style.color="#ff0000";
        b1=false;
        oAccount.focus();
    }else if(!cAccount.test(oAccount.value)){
        oAccAttention.innerHTML="账号不符合规格哟~";
        oAccAttention.style.color="#ff0000";
        b1=false;
    }
    else{
        var url="myServlet";
        xmlhttp1.open("post",url,true);
        xmlhttp1.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp1.send("method=judgeAccount&account="+oAccount.value);

    }
}



//检测昵称

var oName=document.getElementById("name");
var oNa=document.getElementById("na");


function checkName() {
    var cName=/^[0-9a-zA-Z\u4e00-\u9fa5_丶@]{3,10}$/;
     if(oName.value==null||oName.value=="") {
         oNa.innerHTML = "  昵称不可以空哟~";
         oNa.style.color="#ff0000";
         b3=false;
         oName.focus();
     }else if(!cName.test(oName.value)){
         oNa.innerHTML="昵称不正确噢~";
         oNa.style.color="#ff0000";
         b3=false;

     } else{
         var url="myServlet" ;
         xmlhttp2.open("post",url,true);
         xmlhttp2.setRequestHeader("Content-type","application/x-www-form-urlencoded");
         xmlhttp2.send("method=judgeName&name="+oName.value);
     }
}

xmlhttp1.onreadystatechange=function(){

    if (xmlhttp1.readyState == 4 && xmlhttp1.status == 200) {
        var jsonText = xmlhttp1.responseText;
        var obj = JSON.parse(jsonText);

        if (obj.result1 == "true") {
            oAccAttention.innerHTML = "  账号已存在!";
            oAccAttention.style.color="#ff0000";
            b1=false;
        } else {
            oAccAttention.innerHTML = "  账号可以使用！";
            oAccAttention.style.color="#00ffff";
            b1=true;
        }

    }
}
xmlhttp2.onreadystatechange=function () {

    if(xmlhttp2.readyState==4&&xmlhttp2.status==200) {
        var jsonText = xmlhttp2.responseText;
        var obj = JSON.parse(jsonText);

        if (obj.result2 == "true") {
            oNa.innerHTML = "  昵称已存在！";
            oNa.style.color="#ff0000";
            b3=false;
        } else {
            oNa.innerHTML = "  昵称可以使用！";
            oNa.style.color="#00ffff";
            b3=true;
        }


    }

}

//检测密码

function checkPassword() {
  var checkPaw=/^[a-zA-Z0-9]{5,15}/;
    if(oPassword.value==null||oPassword.value==""){
        b2=false;
      oPad.innerHTML="密码不可以为空噢~";
      oPad.style.color="#ff0000";
    }else if(!checkPaw.test(oPassword.value)){
        b2=false;
        oPad.innerHTML="密码不规则噢~";
        oPad.style.color="#ff0000";
    }else{
        oPad.innerHTML="";
        b2=true;
    }


}
/*
//检验验证码
function checkVerCode() {
    var oVerCode=document.getElementById("verCode");
    var oVer=document.getElementById("ver");
    if(oVerCode.value!=null||oVerCode.value!="") {
        if (vercode == (oVerCode.value.toLowerCase())) {
            oVer.innerHTML = "";
        } else {
            oVer.innerHTML = "验证码错啦~";

        }
    }
}

*/

function cleanVer() {
    var oVer=document.getElementById("ver");
    oVer.innerHTML="";

}

//提交时检验
function checkSubmit() {
    checkAccount();
    checkName();
    checkPassword();

    if(b1&&b2&&b3){
      return true;
    }else {
        return false;
    }

}

//刷新验证码
function myReload() {
    var oImg= document.getElementById("img");
    oImg.src="myServlet?method=verCode&id="+Math.random();
}


