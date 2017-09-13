/**
 * Created by baron on 17-6-4.
 */









var OBegin_h=document.getElementById("begin_h");
var OBegin_m=document.getElementById("begin_m");
var Oend_h=document.getElementById("end_h");
var Oend_m=document.getElementById("end_m");
var OlongTime=document.getElementById("longtime");
var OinlongTime=document.getElementById("inlongtime");
var time=0;
var b=false;

function judge() {

    if((OBegin_h.value-0)>(Oend_h.value-0)){

        alert("骚年，你想耍我吗？时间段错了");
        b=false;
    }else if((OBegin_h.value-0)==(Oend_h.value-0) && (OBegin_m.value-0)>(Oend_m.value-0)){
        alert("骚年，你想耍我吗？时间段错了");
        b=false;
    }else {
          /*开始分钟>最后分钟开开开开啊啊啊钟*/
        if((OBegin_m.value-0)>(Oend_m.value-0)){
            time=Oend_h.value-OBegin_h.value-0.5;
        }else {
            /* 最后分钟==30*/
            if((Oend_m.value-0)==30) {
                if((OBegin_m.value-0!=30)) {
                    time = Oend_h.value - OBegin_h.value + 0.5;
                }else {
                    time = Oend_h.value - OBegin_h.value;
                }
            }else {
                /*最后分==0*/
                time=Oend_h.value - OBegin_h.value;
            }
        }

        OinlongTime.value=time;
        if((time-0)==0){
            alert("结果是0小时，你要我怎么算呢？");
            b=false;
        }else {
            OlongTime.innerHTML=time+"小时";
            b=true;
        }

    }


}

function check() {


    if(b){
        return true;
    }else {
        alert("骚年，请计算时长");
    }



    return false;
}










layui.use('laydate', function(){
    var laydate = layui.laydate;

    var start = {
        min: laydate.now()
        ,max: '2099-06-16 23:59:59'
        ,istoday: false
        ,choose: function(datas){
            end.min = datas; //开始日选好后，重置结束日的最小日期
            end.start = datas //将结束日的初始值设定为开始日
        }
    };

    var end = {
        min: laydate.now()
        ,max: '2099-06-16 23:59:59'
        ,istoday: false
        ,choose: function(datas){
            start.max = datas; //结束日选好后，重置开始日的最大日期
        }
    };



});




