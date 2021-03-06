// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require ckeditor-jquery
//= require turbolinks
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require c3
//

$(document).ready(function () {
  1+1;
  $('.ckeditor').ckeditor({});

  $('.check_box_toggle').change(function () {
    path = $(this).data('path');
    $.ajax({
      url: path,
      method: 'PATCH'
    });
  });

  $('.datetimepicker').datetimepicker({format: 'YYYY/MM/DD HH:mm'});


});
