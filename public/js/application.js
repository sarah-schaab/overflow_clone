$(document).ready(function () {
  $('.edit-form').hide();

  $('.edit-button').on('click', function(event){
    event.preventDefault();
    $('.edit-button').toggle();
    $('.edit-form').toggle();
  })

  $('.answer-form').hide();

  $('.answer-button').on('click', function(event){
    event.preventDefault();
    $('.answer-button').toggle();
    $('.answer-form').toggle();
  })
  $('.question-form').hide();

  $('.question-button').on('click', function(event){
    event.preventDefault();
    $('.question-button').toggle();
    $('.question-form').toggle();
  })
  $('.comment-form').hide();

  $('.comment-button').on('click', function(event){
    event.preventDefault();
    $('.comment-button').toggle();
    $('.comment-form').toggle();
  })

});
