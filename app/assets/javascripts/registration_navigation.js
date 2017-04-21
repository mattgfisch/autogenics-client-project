$(document).ready(function(){
  $('#button-to-registration').on('click', function(event){
    event.preventDefault();
    var button_path = $(this).parent().attr('action');
    var button_method = $(this).parent().attr('method');

    var request = $.ajax({
      url: button_path,
      type: button_method
    });
    request.done(function(response){
      var parsed = JSON.parse(response);
      $('#ajax-content').html(parsed);
    });
  });


});
