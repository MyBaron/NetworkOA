/**
 * Created by baron on 17-6-5.
 */



function mythink () {


    layer.tab({
        area: ['600px', '600px'],
        tab: [{
            title: 'TAB1',
            content: '<p style="font-size: 20px">初衷</p>'+
            '<p>&nbsp;&nbsp;&nbsp;&nbsp;转眼间，来到网络中心，也是快一年了。</p>'+
    '<p>在这一年间，感谢办公室的所有人的对我的帮助。我也非常喜欢这个环境。</p>'+
    '<p>&nbsp;&nbsp;&nbsp;&nbsp;可惜，天下无不散之宴席，看着上一届的师兄退任，百感交集。现在我也即将要离开了。</p>'+
    '<p>虽然旧人离开，新人招进来。办公室实力还是那么强。</p>'+
    '<p>但我依然是感觉到办公室出现一些情感空洞了。</p>'+
    '<p>&nbsp;&nbsp;&nbsp;&nbsp;因为，我发现，没有一个地方存放着办公室的文化以及历史</p>'+
    '<p>所以，我就打算以我的力量来开个头，创个地方来存放办公室的笑声</p>'+
    '<strong>&nbsp;&nbsp;&nbsp;&nbsp;虽然这是一oa系统，其实我一开始想做的只是一个照片墙，一个留言区，一个历届助理的介绍的一个网页。</strong>'+
    '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;by 蓝汝琪 谢雅婷</p>'+
            '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.6.5</p>'
        }]
    });



}


$(document).ready(function () {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('charts'));

    // 指定图表的配置项和数据
    myChart.setOption({
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                data:[
                    {value:30, name:'未完成30单'},
                    {value:10, name:'未评价10单'},
                    {value:5, name:'未处理5单'}
                ]
            }
        ]
    })

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
});