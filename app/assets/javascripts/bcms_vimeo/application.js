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
//= require_tree .

$('.video-container a').live('click', function() {
    alert('Here I am');
    var videoID = $(this).attr('class');
    var videoTitle = $(this).parent('article').children('h4').html();

    $('#myModalLabel').html(videoTitle);
    $('.modal-body iframe').attr('src','http://player.vimeo.com/video/' + videoID + '?byline=0&amp;portrait=0&amp;badge=0');
});