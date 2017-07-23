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

	if(window.matchMedia('(max-width: 767px)').matches) {
            var bg = jQuery("#hero-bg");
            bg.height(jQuery(window).height()-50);
    };

	$.stellar({
	    horizontalScrolling: false,
	    responsive: false,
	});

	$(function() {
	    $('.nav a').on('click', function(){ 
	        if($('.navbar-toggle').css('display') !='none'){
	            $(".navbar-toggle").trigger( "click" );
	        }
	    });
	});

	$("#lightGallery").lightGallery(); 

});

document.addEventListener("turbolinks:before-cache", function() {

	$.stellar('destroy')

});

