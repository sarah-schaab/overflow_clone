$(document).ready(function () {
  $('.edit-form').hide();

  $('.edit-button').on('click', function(event){
    event.preventDefault();
    $('.edit-form').toggle();
  })
});
