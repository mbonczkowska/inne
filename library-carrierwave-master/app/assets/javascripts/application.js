// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.Jcrop
//= require twitter/bootstrap
//= require_tree .

jQuery(function() {

  $('#cropbox').Jcrop({
    onChange: updateCoords,
    onSelect: updateCoords,
    onRelease: clearCoords,

    aspectRatio: 1,

    // http://deepliquid.com/content/Jcrop_Sizing_Issues.html
    boxWidth: 400,
    boxHeight: 400
  });

});

function updateCoords(c) {
  $('#book_crop_x').val(c.x);
  $('#book_crop_y').val(c.y);
  // $('#x2').val(c.x2);
  // $('#y2').val(c.y2);
  $('#book_crop_w').val(c.w);
  $('#book_crop_h').val(c.h);
};

function clearCoords() {
  $('#coords .controls').val('');
};
