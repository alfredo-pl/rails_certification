$(document).ready(function () {
    $("#nav div.item").first().removeClass("active");
    $("#nav div.item").last().addClass("active");
    $('.message .close')
    .on('click', function() {
      $(this)
        .closest('.message')
        .transition('fade')
      ;
    })
  ;
})