document.addEventListener("turbolinks:load", function() {

//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
	    $('a.page-scroll').bind('click', function(event) {
	        var $anchor = $(this);
	        $('html, body').stop().animate({
	            scrollTop: $($anchor.attr('href')).offset().top
	        }, 1500, 'easeInOutExpo');
	        event.preventDefault();
	    });
	});

	$.stellar({
	    horizontalScrolling: false,
	    responsive: true,
	});

	$(function() {
	    $('.nav a').on('click', function(){ 
	        if($('.navbar-toggle').css('display') !='none'){
	            $(".navbar-toggle").trigger( "click" );
	        }
	    });
	});
});

document.addEventListener("turbolinks:before-cache", function() {

	$.stellar('destroy')

});

