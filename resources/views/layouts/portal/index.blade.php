<!DOCTYPE HTML>
<html>
	<head>
		<title>@yield('title') | Binmudora Pemalang</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link href="{{asset("css/bootstrap-3.1.1.min.css")}}" rel='stylesheet' />
		<link href="{{asset("css/style-portal.css")}}" rel='stylesheet' type='text/css' />
		<link href="{{asset("css/font-awesome.css")}}" rel="stylesheet">
		<script src="{{asset("js/jquery-portal.min.js")}}"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link rel="shortcut icon" href="{{ asset('images/logo.png') }}">
		<script src="{{asset("js/bootstrap.min.js")}}"></script>
		<script src="{{asset("js/jquery.leanModal.min.js")}}"></script>
	</head>
	<body>
		<div class="container">
			<div class="news-paper">
				@include('layouts.portal.header-title')
				@include('layouts.portal.menu')
				<div class="main-content">
					<div class="col-md-9 total-news">
						@include('layouts.portal.slider')
						<div class="posts">
							@include('layouts.portal.posts')
						</div>
					</div>
					
					
					
				</div>
				<div class="col-md-3 side-bar">
					@include('layouts.portal.right-side')
				</div>
				@include('layouts.portal.footer')
				
			</div>
		</div>
		</div>

	
	</body>
</html>