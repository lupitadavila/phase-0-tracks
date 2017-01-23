// Testing multiple functions on selector
$('#hero .name').hide().fadeIn('2000');
$('#hero .title').hide().fadeIn('3000');

// On click function for button
$('#resume').click(function() {
  alert('Resume is currently not available. Please check back tomorrow!');
});

// Fade in effect on hover
$('#hero').hover(function() {
  $(this).css('background-color','#a94442')
});

$('#about').hover(function() {
  $('#about h2').removeClass('transparent')
});

$('.increase-font').click(function() {
	var currentFontSize = $('.bio').css('font-size');
	$('.bio').css('font-size',parseInt(currentFontSize)*1.2 + 'px');
});

$('.reset').click(function() {
	$('.bio').css('font-size','14px');
});