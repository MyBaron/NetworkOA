/**
 * Created by Administrator on 2017/5/11.
 */









$(function(){
    $("div.holder").jPages({
        containerID : "itemContainer",
        previous : "←",
        next : "→",
        perPage : 10,
        delay : 100
    });
});





function get(path,gym_id,user_id) {
    window.location.href=path+"user_id="+user_id+"&gym_id="+gym_id;
}