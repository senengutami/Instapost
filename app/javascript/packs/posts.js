(function() {
    $(function() {
      if ($('.pagination').length && $('#infinite-scrolling').length) {
        $(window).scroll(function() {
          var url;
          url = $('.pagination .next_page').attr('href');
          if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
            $('.pagination').text("Loading more posts...");
            $.getScript(url);
          }
        });
      }
    });
  
  }).call(this);