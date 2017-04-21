$(document).ready(function(){
  $('#button-to-registration').on('click', function(event){
    event.preventDefault();
    var buttonPath = $(this).parent().attr('action');
    var buttonMethod = $(this).parent().attr('method');

    var request = $.ajax({
      url: buttonPath,
      type: buttonMethod
    });
    request.done(function(response){
      var parsed = JSON.parse(response);
      $('#ajax-content').html(parsed);
    });
  });

  $('#ajax-content').on('click', "#create-account-form", function(event){
    event.preventDefault();
    var formPath = $(this).parent().attr('action');
    var formMethod = $(this).parent().attr('method');
    var formData = $(this).parent().serialize();
    var request = $.ajax({
      url: formPath,
      type: formMethod,
      data: formData,
    });
    request.done(function(response){
      var parsed = JSON.parse(response);
      $('#ajax-content').html(parsed);
    });
  });
});
