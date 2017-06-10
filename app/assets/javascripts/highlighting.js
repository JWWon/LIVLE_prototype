document.addEventListener("DOMContentLoaded", function(event) {
    $("#list_"+ 2).css('background', 'none');
    var $window = $(window);

    var content_height = $(".background-video").height(); //컨텐츠 높이

    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        $window.on({'touchmove': function(e) {
            var cur_point = $window.scrollTop() + $window.height()/2; //가운데 지점 위치
            var pos_num = Math.floor(cur_point / content_height) + 1; //n번째 컨텐츠
            console.log(pos_num);

            // console.log("cur position : " + pos_num);
            // console.log("window size : " + $('#list-container').height())

            // 블러효과 처리
            $("#list_"+(pos_num-2)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+(pos_num-1)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+pos_num).css('background', 'none');
            $("#list_"+(pos_num+1)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+(pos_num+2)).css('background', 'rgba(0, 0, 0, 0.65)');
        }});
    } else {
        $window.scroll(function() {
            var cur_point = $window.scrollTop() + $window.height()/2; //가운데 지점 위치
            var pos_num = Math.floor(cur_point / content_height) + 1; //n번째 컨텐츠

            // console.log("cur position : " + pos_num);
            // console.log("window size : " + $('#list-container').height())

            // 블러효과 처리
            $("#list_"+(pos_num-2)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+(pos_num-1)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+pos_num).css('background', 'none');
            $("#list_"+(pos_num+1)).css('background', 'rgba(0, 0, 0, 0.65)');
            $("#list_"+(pos_num+2)).css('background', 'rgba(0, 0, 0, 0.65)');
        });
    }
});