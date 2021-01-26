$(".navbar-toggler").click(function () {
  //alert($( this ).css( "transform" ));
  if ($(this).css("transform") == "none") {
    $(this).css("transform", "rotate(135deg)");
  } else {
    $(this).css("transform", "");
  }
});
