// Click on header for that content div
  // Show the content within that div
  // Hide content in div when a new header is clicked
$( document ).ready(function() {
    $('#article-abstract').on("click", function(event){
      event.preventDefault();
      var abContent = $(this).closest('p')
    })
});
