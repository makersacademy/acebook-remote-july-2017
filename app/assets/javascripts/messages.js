// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).keypress(function(e) {
  if(e.which === 13) {
    var user = document.getElementById('message_user_id').value
    var chat = document.getElementById('message_chat_id').value
    App.chat.speak({message: event.target.value, user_id: user, chat_id: chat});
    event.target.value = ''
    event.preventDefault();
  }
});
