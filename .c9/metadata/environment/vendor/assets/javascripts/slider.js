{"filter":false,"title":"slider.js","tooltip":"/vendor/assets/javascripts/slider.js","undoManager":{"mark":13,"position":13,"stack":[[{"start":{"row":0,"column":0},"end":{"row":24,"column":0},"action":"insert","lines":["$(document).ready(function() {","  $(\"#myCarousel\").on(\"slide.bs.carousel\", function(e) {","    var $e = $(e.relatedTarget);","    var idx = $e.index();","    var itemsPerSlide = 3;","    var totalItems = $(\".carousel-item\").length;","","    if (idx >= totalItems - (itemsPerSlide - 1)) {","      var it = itemsPerSlide - (totalItems - idx);","      for (var i = 0; i < it; i++) {","        // append slides to end","        if (e.direction == \"left\") {","          $(\".carousel-item\")","            .eq(i)","            .appendTo(\".carousel-inner\");","        } else {","          $(\".carousel-item\")","            .eq(0)","            .appendTo($(this).find(\".carousel-inner\"));","        }","      }","    }","  });","});",""],"id":1}],[{"start":{"row":0,"column":0},"end":{"row":24,"column":0},"action":"remove","lines":["$(document).ready(function() {","  $(\"#myCarousel\").on(\"slide.bs.carousel\", function(e) {","    var $e = $(e.relatedTarget);","    var idx = $e.index();","    var itemsPerSlide = 3;","    var totalItems = $(\".carousel-item\").length;","","    if (idx >= totalItems - (itemsPerSlide - 1)) {","      var it = itemsPerSlide - (totalItems - idx);","      for (var i = 0; i < it; i++) {","        // append slides to end","        if (e.direction == \"left\") {","          $(\".carousel-item\")","            .eq(i)","            .appendTo(\".carousel-inner\");","        } else {","          $(\".carousel-item\")","            .eq(0)","            .appendTo($(this).find(\".carousel-inner\"));","        }","      }","    }","  });","});",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":7,"column":11},"action":"insert","lines":["(function($) {","    \"use strict\";","","    // manual carousel controls","    $('.next').click(function(){ $('.carousel').carousel('next');return false; });","    $('.prev').click(function(){ $('.carousel').carousel('prev');return false; });","    ","})(jQuery);"]}],[{"start":{"row":0,"column":0},"end":{"row":7,"column":11},"action":"remove","lines":["(function($) {","    \"use strict\";","","    // manual carousel controls","    $('.next').click(function(){ $('.carousel').carousel('next');return false; });","    $('.prev').click(function(){ $('.carousel').carousel('prev');return false; });","    ","})(jQuery);"],"id":3}],[{"start":{"row":0,"column":0},"end":{"row":19,"column":3},"action":"insert","lines":["$('#carouselExample').on('slide.bs.carousel', function (e) {","","    var $e = $(e.relatedTarget);","    var idx = $e.index();","    var itemsPerSlide = 4;","    var totalItems = $('.carousel-item').length;","    ","    if (idx >= totalItems-(itemsPerSlide-1)) {","        var it = itemsPerSlide - (totalItems - idx);","        for (var i=0; i<it; i++) {","            // append slides to end","            if (e.direction==\"left\") {","                $('.carousel-item').eq(i).appendTo('.carousel-inner');","            }","            else {","                $('.carousel-item').eq(0).appendTo('.carousel-inner');","            }","        }","    }","});"],"id":4}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":5}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["$"],"id":6}],[{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["f"],"id":11},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"insert","lines":["u"]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"insert","lines":["n"]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"insert","lines":["c"]},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"insert","lines":["t"]},{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"insert","lines":["i"]},{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":["o"]},{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["n"]}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":11},"action":"insert","lines":["()"],"id":12}],[{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["("],"id":13}],[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":[" "],"id":14},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["{"]}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "],"id":15},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "]},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"insert","lines":["  "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["  "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["  "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["  "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["  "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["  "]},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["  "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":20,"column":5},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":16},{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"remove","lines":["  "],"id":17}],[{"start":{"row":21,"column":0},"end":{"row":21,"column":1},"action":"insert","lines":["}"],"id":18},{"start":{"row":21,"column":1},"end":{"row":21,"column":2},"action":"insert","lines":[")"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":21,"column":2},"end":{"row":21,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1555445450388,"hash":"6453393100fd71fe7a47d93e4b13a8112b771b53"}