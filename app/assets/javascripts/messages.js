// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).keypress(function(e) {
  if(e.which === 13) {
    App.chat.speak(event.target.value);
    event.target.value = ''
    console.log("The Jquery is not working")
    event.preventDefault();
  }
});
