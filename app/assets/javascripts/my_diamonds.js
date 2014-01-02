// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $('.templateInput').on('click',function(e){
    e.preventDefault();
    var id = $(this).attr('data-id');
    $('#my_diamond_template_id').val(id);
  })
})