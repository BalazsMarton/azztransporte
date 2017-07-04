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

});

document.addEventListener("turbolinks:before-cache", function() {

});


$(document).ready(function(){

	$(".secondgroup").hide();

	$(".more").click(function(){
		$(".secondgroup").slideToggle("slow");
		$(".more").text(function(i, text){
          return text === "mehr" ? "veniger" : "mehr";
      })

	});

});