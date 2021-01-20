(function ($) {
  "use strict";

  $(function () {
    let header = $(".start-style");
    $(window).scroll(function () {
      let scroll = $(window).scrollTop();

      if (scroll >= 10) {
        header.removeClass("start-style").addClass("scroll-on");
      } else {
        header.removeClass("scroll-on").addClass("start-style");
      }
    });
  });

  //-----------------Animation--------------------

  $(document).ready(function () {
    $("body.hero-anime").removeClass("hero-anime");
  });

  //----------------------Menu On Hover--------------------

  $(document).on("mouseenter mouseleave", ".nav-item", function (e) {
    if ($(window).width() > 750) {
      let _d = $(e.target).closest(".nav-item");
      _d.addClass("show");
      setTimeout(function () {
        _d[_d.is(":hover") ? "addClass" : "removeClass"]("show");
      }, 1);
    }
  });
})(jQuery);