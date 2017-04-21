$( document ).ready(function() {
    $('#new-post-exp').on("click", function(event){
      event.preventDefault();
      var action = $(event.currentTarget).children().attr('action');
      var method = $(event.currentTarget).children().attr('method');
      var request = $.ajax({
        url: action,
        method: method
      });
      request.done(function(response){
        var parsed = JSON.parse(response);
        $('#ajax-content').html(parsed);
      });
    });

    // $('#ajax-content').on("submit", '#create-exp', function(event) {
    //   event.preventDefault();
    //   var action = $(event.currentTarget).children().attr('action');
    //   var method = $(event.currentTarget).children().attr('method');
    //   var dataInput = $(event.currentTarget).children().serialize();
    //   var request = $.ajax({
    //     url: action,
    //     method: method,
    //     data: dataInput
    //   });
    //   request.done(function(response){
    //     console.log("HELLO");
    //     console.log(response);
    //   })

    // })



});
