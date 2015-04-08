/* Slim Scroll */

$(document).ready(function() {
  $('.scroll-chat').slimscroll({
    height: '475px',
    color: 'rgba(0,0,0,0.3)',
    size: '5px'
  });
});

$(document).ready(function(){

var w = $(window).width();
var h = $(window).height();
var exp = $('.widget');

exp.css('top', h/2);


//FULL SCREEN 
var c = 1;
$('.fa-expand').click(function() {
c++;

$(this).toggleClass('fa-compress');

//odd -> Full Screen 
if(c%2==0){

exp.animate({width:w}, 300, function(){
$(this).animate({height:h}, 300);
exp.addClass('active');
});
}

//even -> Exit Full Screen 
if (c%2!=0){

exp.animate({height:'480'}, 300, function(){
$(this).animate({width:'850'}, 300);
exp.removeClass('active');
});
}
});
