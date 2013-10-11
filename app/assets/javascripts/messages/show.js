$(function() {
    var countdownObj = $("#countdown");
    var maxTime = countdownObj.attr("data-time");
    countdownObj.text(maxTime);

    var doCountDown = function(max) {
        var num = max;
        setInterval(function() {
            num = num-1;
            if (num < 0) {
                location.replace('/');
            } else {
                $("#countdown").text(num);
            }
        }, 1000);
    }
    doCountDown(maxTime);
});
