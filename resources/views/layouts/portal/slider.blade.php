<section class="slider">
	<div class="flexslider">
		<ul class="slides">
			<li>
				<a href="singlepage.html"><img src="images/slider/s1.jpg" class="img-responsive" alt="" /></a>
			</li>
			<li>
				<a href="singlepage.html"><img src="images/slider/s2.jpg" class="img-responsive" alt="" /></a>
			</li>
			<li>
				<a href="singlepage.html"><img src="images/slider/s3.jpg" class="img-responsive" alt="" /></a>
			</li>
		</ul>
	</div>
</section>
<!-- FlexSlider-->

<script src="{{asset("js/jquery.flexslider.js")}}"></script>
<link rel="stylesheet" href="{{asset("css/flexslider.css")}}" type="text/css" media="screen" />
<script type="text/javascript">
	$(function(){
	SyntaxHighlighter.all();
	});
	$(window).load(function(){
	$('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
		$('body').removeClass('loading');
		}
	});
	});
</script>