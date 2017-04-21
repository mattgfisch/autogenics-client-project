$(document).ready(function(){
  $('#session-submit').submit(function(event){
    event.preventDefault();
    var request = $.ajax({
      url: '/sessions',
      method: 'GET'
    });
    $('#ajax-content').htl
  });
});
