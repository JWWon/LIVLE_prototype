document.addEventListener("DOMContentLoaded", function(event) {
    $("#list_"+ 1).css('background', 'rgba(0, 0, 0, 0.65)');
    $("#list_"+ 2).css('background', 'none');
    $("#list_"+ 3).css('background', 'rgba(0, 0, 0, 0.65)');
    $("#list_"+ 4).css('background', 'rgba(0, 0, 0, 0.65)');

    var content_height = $(".background-video").height(); //컨텐츠 높이
    $(window).scroll(function() {
        var cur_point = $(window).scrollTop() + $(window).height()/2; //가운데 지점 위치
        var pos_num = Math.floor(cur_point / content_height) + 1; //n번째 컨텐츠

        // 블러효과 처리
        $("#list_"+(pos_num-1)).css('background', 'rgba(0, 0, 0, 0.65)');
        $("#list_"+pos_num).css('background', 'none');
        $("#list_"+(pos_num+1)).css('background', 'rgba(0, 0, 0, 0.65)');
    });
});