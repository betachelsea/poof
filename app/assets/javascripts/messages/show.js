$(function() {
    var countdownObj = $("#countdown");
    var maxTime = countdownObj.attr("data-time");
    countdownObj.text(maxTime);

    var doCountDown = function(max) {
        var num = max;
        setInterval(function() {
            num = num-1;
            if (num < 0) {
                var delNumber = $("#countdown").attr("data-id");
                location.replace('/message/delete/'+delNumber);
            } else {
                $("#countdown").text(num);
            }
        }, 1000);
    }
    doCountDown(maxTime);
});
