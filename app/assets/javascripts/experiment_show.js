// Click on header for that content div
  // Show the content within that div
  // Hide content in div when a new header is clicked
$( document ).ready(function() {
    $('.sub-content').on("click", '#article-abstract', function(){
      $('#article-abstract').find('p').toggleClass('hidden show');
    });

    $('.sub-content').on("click", '#article-intro', function(){
      $('#article-intro').find('p').toggleClass('hidden show');
    });
});





    // $('#article-abstract').on("click", function(){
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-abstract').find('p').hide();
    //   $('#article-abstract').find('p').removeClass();
    //   $('#article-abstract').find('p').slideDown();

    // });

    // $('#article-intro').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-intro').find('p').hide();
    //   $('#article-intro').find('p').removeClass();
    //   $('#article-intro').find('p').slideDown();

    //  });

    // $('#article-material').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-material').find('p').hide();
    //   $('#article-material').find('p').removeClass();
    //   $('#article-material').find('p').slideDown();
    //  });

    // $('#article-results').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-results').find('p').hide();
    //   $('#article-results').find('p').removeClass();
    //   $('#article-results').find('p').slideDown();
    //  });

    // $('#article-disc').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-disc').find('p').hide();
    //   $('#article-disc').find('p').removeClass();
    //   $('#article-disc').find('p').slideDown();
    //  });

    // $('#article-con').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-disc').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-con').find('p').hide();
    //   $('#article-con').find('p').removeClass();
    //   $('#article-con').find('p').slideDown();
    //  });

    // $('#article-sup-info').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-results').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').hide();
    //   $('#article-sup-info').find('p').removeClass();
    //   $('#article-sup-info').find('p').slideDown();
    //  });

    // $('#article-acknow').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').hide();
    //   $('#article-sup-info').find('p').removeClass();
    //   $('#article-sup-info').find('p').slideDown();
    //  });

    //  $('#article-author-cont').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-ref').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').hide();
    //   $('#article-sup-info').find('p').removeClass();
    //   $('#article-sup-info').find('p').slideDown();
    //  });

    //   $('#article-ref').on("click", function(){
    //   $('#article-abstract').find('p').addClass('hidden');
    //   $('#article-intro').find('p').addClass('hidden');
    //   $('#article-material').find('p').addClass('hidden');
    //   $('#article-con').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').addClass('hidden');
    //   $('#article-acknow').find('p').addClass('hidden');
    //   $('#article-author-cont').find('p').addClass('hidden');
    //   $('#article-sup-info').find('p').hide();
    //   $('#article-sup-info').find('p').removeClass();
    //   $('#article-sup-info').find('p').slideDown();
    //  });

