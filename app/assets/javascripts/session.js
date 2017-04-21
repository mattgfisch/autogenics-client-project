$(document).ready(function(){
  $('#ajax-content').on("submit","#new_post", function(event){
    event.preventDefault();
    var formPath = $(this).attr('action');
    var formMethod = $(this).attr('method');
    var formData = $(this).serialize();

    var request = $.ajax({
      url: formPath,
      method: formMethod,
      data: formData
    });
    request.done(function(response){
      var parsed = JSON.parse(response);
      $('#ajax-content').html(parsed);
    });

  });
});
