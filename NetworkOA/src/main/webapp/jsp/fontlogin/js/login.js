/**
 * Created by baron on 17-6-12.
 */





var xmlhttp;



//建立ajax
if(window.XMLHttpRequest){

    xmlhttp=new XMLHttpRequest();
}else {

    xmlhttp=new ActiveXObject();
}



function login() {
    var oAccount=document.getElementById("id");
    var oPassword=document.getElementById("password");
    if(oAccount.value!==null||oAccount.value!=="") {
        if(oPassword.value!==null||oPassword.value.length<6) {

            xmlhttp.open("post", "../../fontlogin/checkBill.do", true);
            xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xmlhttp.send("method=login&id="+oAccount.value+"&password="+oPassword.value);
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

        if(json.message=="1"){
            alert("没有此订单");
        }else if(json.message=="2"){
            alert("密码错误噢");
        }else {
            window.location.href="Bill.jsp";
        }

    }
}