document.addEventListener("DOMContentLoaded", function(event) {
    var isLoading = false;
    if ($('.infinite-scrolling').size() > 0) {
        $(window).on('scroll', function() {
            var more_contents_url = $('.pagination a.next_page').attr('href');
            if (!isLoading && more_contents_url && $(window).scrollTop() > $(document).height() - $(window).height() - 240) {
                isLoading = true;
                ga('send', { 'hitType': 'pageview', 'page': $(location).attr("href") + more_contents_url });
                console.log("virtual pageview: " + $(location).attr("href") + more_contents_url);
                $.getScript(more_contents_url).done(function (data,textStatus,jqxhr) {
                    isLoading = false;
                }).fail(function() {
                    isLoading = false;
                });
            }
        });
    }
});