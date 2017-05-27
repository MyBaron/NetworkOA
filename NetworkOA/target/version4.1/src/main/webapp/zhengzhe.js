/**
 * Created by Administrator on 2017/4/11.
 */


//检测账号只可以由字母，数字和下划线组成
var oAccount=document.getElementById("account");
var oName=document.getElementById("name");
var oPassword=document.getElementById("password");
var oAcc=document.getElementById("acc");
var cAccount=/^[a-zA-Z]\w{5,17}$/;

function check() {
   var result= cAccount.test(oPassword.value);

    if(result){
      alert(111);
    }else{

    }

}

