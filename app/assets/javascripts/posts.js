// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  $(".like-link").on("click", function() {
    $("#like-" + this.dataset.id).text(this.dataset.count);
  });

});
