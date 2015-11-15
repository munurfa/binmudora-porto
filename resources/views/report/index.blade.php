<!DOCTYPE HTML>
<html>
	<head>
		<title>@yield('title') | Report</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- Bootstrap Core CSS -->
		<link href="{{asset("css/bootstrap-3.1.1.min.css")}}" rel='stylesheet' />
	

		<!-- jQuery -->
		<script src="{{asset("js/jquery.min.js")}}"></script>
<style >
	tbody:before, tbody:after { display: none; };
</style>
	</head>
	<body>

	<div style="text-align: center">
		@yield('main')
	</div>

<script src="{{asset("js/bootstrap.min.js")}}"></script>

</body>
</html>