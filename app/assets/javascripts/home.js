
$(function(){
  $('.top-detail').click(function(){

    var $this = $(this).find('a');

    if($this.text() === "Learn more"){
      $this.text("close");
      $('#more-text').css('display','active');
      $('#more-text').slideDown();
    }else{
      $this.text("Learn more");
      $('#more-text').slideUp();
    }
  });


  $('.scroll').click(function(){

    var href = $(this).attr('href');

    $('html, body').animate({
      'scrollTop': $(href).offset().top

    }, 900);
  });


  $('.i-1').hover(
    function(){
      $(this).next().fadeIn();
    },
    function(){
      $(this).next().fadeOut();
  });

  $('.i-2').hover(
    function(){
      $(this).next().css("display","block");
  });

  //!------- for transfer 

  $('#t_modal').click(function() {

    $('.open_2').css('display','none');
    $('.open_2').removeClass('open_2');

    $('.open_3').css('display','none');
    $('.open_3').removeClass('open_3');

    $('.open_4').css('display','none');
    $('.open_4').removeClass('open_4');

    var $answer = $('.transfer_modal');
    if($answer.hasClass('open_1')) {
      $answer.removeClass('open_1');
      $answer.css("display", "none");

    } else {
      $answer.addClass('open_1');
      $answer.css("display", "block");
    }
  });

  $('#c_modal').click(function() {

    $('.open_1').css('display','none');
    $('.open_1').removeClass('open_1');

    $('.open_3').css('display','none');
    $('.open_3').removeClass('open_3');

    $('.open_4').css('display','none');
    $('.open_4').removeClass('open_4');

    var $answer = $('.class_modal');
    if($answer.hasClass('open_2')) {
      $answer.removeClass('open_2');
      $answer.css("display", "none");

    } else {
      $answer.addClass('open_2');
      $answer.css("display", "block");
    }
  });

  $('#s_modal').click(function() {

    $('.open_1').css('display','none');
    $('.open_1').removeClass('open_1');

    $('.open_2').css('display','none');
    $('.open_2').removeClass('open_2');

    $('.open_4').css('display','none');
    $('.open_4').removeClass('open_4');

    var $answer = $('.study_modal');
    if($answer.hasClass('open_3')) {
      $answer.removeClass('open_3');
      $answer.css("display", "none");

    } else {
      $answer.addClass('open_3');
      $answer.css("display", "block");
    }
  });

  $('#ch_modal').click(function() {

    $('.open_1').css('display','none');
    $('.open_1').removeClass('open_1');

    $('.open_2').css('display','none');
    $('.open_2').removeClass('open_2');

    $('.open_3').css('display','none');
    $('.open_3').removeClass('open_3');

    var $answer = $('.chat_modal');
    if($answer.hasClass('open_4')) {
      $answer.removeClass('open_4');
      $answer.css("display", "none");

    } else {
      $answer.addClass('open_4');
      $answer.css("display", "block");
    }
  });

  $('.tranfer-content').click(function(){

    $('.open_1').css('display','none');
    $('.open_1').removeClass('open_1');

    $('.open_2').css('display','none');
    $('.open_2').removeClass('open_2');

    $('.open_3').css('display','none');
    $('.open_3').removeClass('open_3');

    $('.open_4').css('display','none');
    $('.open_4').removeClass('open_4');
  });

});
