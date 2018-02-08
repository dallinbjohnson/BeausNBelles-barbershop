$(window).scroll(function() {
  if ($(this).scrollTop() > 40){ // Set position from top to add class
    $(".scissorLogo").addClass("transform");
    $(".textLogo").addClass("transform");
    $(".navbar").addClass("transform");
  } else {
    $(".scissorLogo").removeClass("transform");
    $(".textLogo").removeClass("transform");
    $(".navbar").removeClass("transform");
  }
});