$('document').on('click','.video-container a', function() {
    alert('Here I am');
    var videoID = $(this).attr('class');
    var videoTitle = $(this).parent('article').children('h4').html();

    $('#myModalLabel').html(videoTitle);
    $('.modal-body iframe').attr('src','http://player.vimeo.com/video/' + videoID + '?byline=0&amp;portrait=0&amp;badge=0');
});