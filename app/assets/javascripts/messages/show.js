$(function() {
    var countdownObj = $("#countdown");
    var maxTime = countdownObj.attr("data-time");
    countdownObj.text(maxTime);
});
