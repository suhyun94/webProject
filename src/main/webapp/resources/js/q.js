/**
 * 퀵 메뉴 구현
 */

/*
 * $(document).ready(function(){ alert('ㅎㅇ'); $(window).scroll(function () { var
 * quickHeight=$(document).scrollTop(); if (0 < quickHeight ) {
 * $('.bms-quick-banner').stop().animate({top:'0px'}, 500); }else if(
 * quickHeight == 0){ $('.bms-quick-banner').stop().animate({top:'151px'}, 500); }
 * }); });
 */

window.onload = function() {

	$(document).ready(function() {
		
		  $(".zeta-menu li").hover(function(){
			    $('ul:first',this).show();
			  }, function(){
			    $('ul:first',this).hide();
			  });
			  $(".zeta-menu>li:has(ul)>a").each( function() {
			    $(this).html( $(this).html()+' &or;' );
			  });
			  $(".zeta-menu ul li:has(ul)")
			    .find("a:first")
			    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
			  
			$(window).scroll(function() {
			var quickHeight = $(document).scrollTop();
			if (0 < quickHeight) {
				$('.bms-quick-banner').stop().animate({
					top : '0px'
				}, 500);
			} else if (quickHeight == 0) {
				$('.bms-quick-banner').stop().animate({
					top : '151px'
				}, 500);
			}
		});
	});

}
