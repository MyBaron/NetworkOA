/**
 * Created by baron on 17-6-10.
 */



function accept(path,id) {

    var b=confirm("确定要接单吗？");
    if(b){
        window.location.href=path+"te_repair/alterDeal.do?id="+id+"&is_deal=1";
    }


}


//评价
function appraise(path,id){

   window.location.href=path+"fontlogin/checkBill.do?id="+id+"&password=88825000";
}



//显示修改
function mychange(id) {
    var oChange=document.getElementById("change"+id);
    var oSuCh=document.getElementById("such"+id);
    var orepair=document.getElementsByClassName("repair"+id);
    var oOutput=document.getElementsByClassName("output"+id);


    for(var k=0;k<oOutput.length;k++){
        oOutput[k].style.display="none";
    }


    for(var i=0;i<orepair.length;i++){
        orepair[i].style.display="inline";
    }

    oChange.style.display="none";
    oSuCh.style.display="block";

}





function myfinish(path,id) {

    var oForm=document.getElementById("service"+id);
    var b=confirm("确定已经维修完了吗？");
    if(b){

        oForm.action=path+"te_repair/finish.do?id="+id;
        return true
    }

    return false;

}


function mycheck() {
    var b=confirm("确定要开单吗？");
    return b;

}

function checkAlterRe(){

    var b=confirm("确定要修改吗？");
    return b;

}

