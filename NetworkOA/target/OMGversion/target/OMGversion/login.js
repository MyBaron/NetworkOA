/**
 * Created by Administrator on 2017/4/14.
 */


var xmlhttp;



//建立ajax
if(window.XMLHttpRequest){

    xmlhttp=new XMLHttpRequest();
}else {

    xmlhttp=new ActiveXObject();
}

function login() {
    var oAccount=document.getElementById("account");
    var oPassword=document.getElementById("password");
    if(oAccount.value!=null||oAccount.value!="") {
        if(oPassword.value!=null||oPassword.value.length<6) {

            xmlhttp.open("post", "manager/login.do", true);
            xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xmlhttp.send("method=login&account="+oAccount.value+"&password="+oPassword.value);
        }else{
            alert("请正确填写密码噢")
        }
    }else {
        alert("请正确填写账号噢~");
    }

}


xmlhttp.onreadystatechange=function () {


    if(xmlhttp.readyState==4&&xmlhttp.status==200){
        var jsonText=xmlhttp.responseText;
        var json=JSON.parse(jsonText);

        if(json.account=="false"){
            alert("用户名不存在噢~");
        }else if(json.password=="false"){
            alert("用户名和密码不匹配噢~");
        }else {

            window.location.href="jsp/myjsp/pages/index.jsp";
        }


    }
}



