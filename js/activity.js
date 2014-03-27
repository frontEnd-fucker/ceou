$(function() {
	var speed = 30;
	var myMar = setInterval(starMarquee, speed);
	var $marquee = $('#marquee');
	var $marquee_1 = $('#marquee_1');
	var $marquee_2 = $('#marquee_2');
	$marquee_2.html($marquee_1.html());
	//alert($marquee_2.html());
	$marquee.mouseenter(function() {
		clearInterval(myMar);
	});
	$marquee.mouseleave(function() {
		myMar = setInterval(starMarquee, speed);
	});

	function starMarquee() {
		if( $marquee.scrollLeft() >= $marquee_1.width() ) {
			$marquee.scrollLeft(0);
		}else {
			$marquee[0].scrollLeft++;
		}
	}
});