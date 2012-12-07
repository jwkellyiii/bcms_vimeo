jQuery(function($) {
    $(document).on('click','.video-container a', function() {
        var videoID = $(this).attr('class');
        var videoTitle = $(this).parents('article').find('h4').html();

        $('#myModalLabel').html(videoTitle);
        $('.modal-body').html('<iframe src="http://player.vimeo.com/video/' + videoID + '?byline=0&amp;portrait=0&amp;badge=0" width="600" height="337" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>');
    });
    $(document).on('click','#closeModal, .modal-backdrop',function() {
        $('#myModalLabel, .modal-body').html('');
    });
});