/**
 * Created by Administrator on 2017/5/18.
 */



$(document).ready(function () {
    $(function() {
        var $container = $('#masonry');
        $container.imagesLoaded(function() {
            $container.masonry({
                itemSelector: '.box',
                columnWidth: 20
            });
        });
    });
});
