// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-migrate-min
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on("click", ".pres-defeat", function(){
  var president = ($(this).attr('data-id'))
  $.ajax({
    url: '/defeat',
    method: 'POST',
    dataType: 'json',
    data: {
      'data': president,
    },
  });
  location.reload();
})

$(document).on("click", ".undo-pres-defeat", function(){
  var president = ($(this).attr('data-id'))
  $.ajax({
    url: '/undo_defeat',
    method: 'POST',
    dataType: 'json',
    data: {
      'data': president,
    },
  });
  location.reload();
})

$(document).on("click", "#victories-view", function(){
  $("#challengers-list").hide()
  $("#victories-list").show()
  $("#victories-view").css('background-color', 'lightblue');
  $("#challengers-view").css('background-color', 'white');
});

$(document).on("click", "#challengers-view", function(){
  $("#challengers-list").show()
  $("#victories-list").hide()
  $("#victories-view").css('background-color', 'white');
  $("#challengers-view").css('background-color', 'lightblue');
});





















