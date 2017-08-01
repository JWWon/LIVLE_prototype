document.addEventListener("DOMContentLoaded", function(event) {
    var isLoading = false;
    if ($('.infinite-scrolling').size() > 0) {
        $(window).on('scroll', function() {
            var _gaq = _gaq || [];
            var more_contents_url = $('.pagination a.next_page').attr('href');
            if (!isLoading && more_contents_url && $(window).scrollTop() > $(document).height() - $(window).height() - 240) {
                isLoading = true;
                _gaq.push(['_setAccount', 'UA-102852425-1'],
                    ['_trackPageview', $(location).attr("href") + more_contents_url]);
                console.log("virtual pageview: " + $(location).attr("href") + more_contents_url);
                $.getScript(more_contents_url).done(function (data,textStatus,jqxhr) {
                    isLoading = false;
                }).fail(function() {
                    isLoading = false;
                });
            }
        });
    }

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
});