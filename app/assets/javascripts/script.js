$(function() {
  $('.faq__dropdown-menu').click(function() {
    var $answer = $(this).children('.answer');
    if($answer.hasClass('open')){
      $answer.removeClass('open')
      $answer.slideUp();
      $(this).find('span').text('+');
    }else {
      $answer.addClass('open')
      $answer.slideDown();
      $(this).find('span').text('-');
    }
  })

  $('.genre').each(function(){
    var genreWidth = $(this).width();
    var genreHeight = $(this).height();
    $(this).children('.game').wrapAll('<div id="genre_wrap"></div>');

    var listWidth = $('#genre_wrap').children('.game').children('li').width();
    var listCount = $('#genre_wrap').children('.game').children('li').length;

    var loopWidth = (listWidth)*(listCount);

    $('#genre_wrap').css({
        top: '0',
        left: '0',
        width: ((loopWidth) * 2),
        height: (genreHeight),
        overflow: 'hidden',
        position: 'absolute'
    });

    $('#genre_wrap ul').css({
        width: (loopWidth)
    });
    loopsliderPosition();

    function loopsliderPosition(){
        $('#genre_wrap').css({left:'0'});
        $('#genre_wrap').stop().animate({left:'-' + (loopWidth) + 'px'},25000,'linear');
        setTimeout(function(){
            loopsliderPosition();
        },25000);
    };

    $('#genre_wrap ul').clone().appendTo('#genre_wrap');
  });

  $('.top-btn').click(function () {
    $('body,html').animate({
      scrollTop: 0
    }, 800);
    return false;
  });
});