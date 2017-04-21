$(document).ready(function() {
  $('.title').on("click", "a", function(e) {
    e.preventDefault();
    $url = $(e.target).attr('href')

    $.ajax({
      type: "GET",
      url: $url,
      dataType: "json"
    }).done(function(data) {
      $("#ajax-content").html(data)
    })
  })
})
