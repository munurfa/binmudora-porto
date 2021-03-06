<!DOCTYPE HTML>
<html>
	<head>
		<title>@yield('title') | Dashboard</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- Bootstrap Core CSS -->
		<link href="{{asset("css/bootstrap-3.1.1.min.css")}}" rel='stylesheet' />
		<link href="{{asset("css/jquery-ui.css")}}" rel='stylesheet' />
		<!-- Custom CSS -->
		<link href="{{asset("css/style.css")}}" rel='stylesheet' type='text/css' />
		{{-- <!-- Graph CSS -->
		<link href="css/lines.css" rel='stylesheet' type='text/css' /> --}}
		<link href="{{asset("css/font-awesome.css")}}" rel="stylesheet">
		<!-- jQuery -->
		<script src="{{asset("js/jquery.min.js")}}"></script>
		<script src="{{asset("js/jquery-ui.js")}}"></script>
		<script src="{{asset("js/tinymce.min.js")}}"></script>


		<!--webfonts-->

    	<link rel="shortcut icon" href="{{ asset('images/logo.png') }}">
		<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
		<!-- Nav CSS -->
		<link href="{{asset("css/custom.css")}}" rel="stylesheet">
		<!-- Metis Menu Plugin JavaScript -->
		<script src="{{asset("js/metisMenu.min.js")}}"></script>
		<script src="{{asset("js/custom.js")}}"></script>
		{{-- <!-- Graph JavaScript -->
		<script src="js/d3.v3.js"></script>
		<script src="js/rickshaw.js"></script> --}}
	</head>
	<body>
		<div id="wrapper">
			@include('layouts.dash.header')
			@include('layouts.dash.sidebar')
			<div id="page-wrapper">
				<div class="graphs">
					@yield('main')

					<div class="copy">
						<p>Copyright &copy; {{Date("Y")}} Binmudora Kabupaten Pemalang </p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="{{asset("js/bootstrap.min.js")}}"></script>
<script type="text/javascript">
	$(document).ready(
  
  /* This is the function that will get executed after the DOM is fully loaded */
  function () {
    $( ".datepicker" ).datepicker({
      changeMonth: true,//this option for allowing user to select month
      changeYear: true ,//this option for allowing user to select from year range
       yearRange: "1950:2070",
       dateFormat: 'yy-mm-dd'
    });
  }

);
</script>
<script type="text/javascript">
   tinymce.init({
  selector     : "textarea",
  plugins      : ["advlist autolink lists link image charmap print preview anchor", "searchreplace visualblocks code fullscreen", "insertdatetime media table contextmenu paste responsivefilemanager"],
  toolbar      : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image responsivefilemanager",
  image_advtab : true,
  relative_urls: false, 
  
  external_filemanager_path:"{!! str_finish(asset('/filemanager'),'/') !!}",
  filemanager_title        :"Responsive File Manager" , // bisa diganti terserah anda
  external_plugins         : { "filemanager" : "{{ asset('/filemanager/plugin.min.js') }}"} 
   }); 
</script>

</body>
</html>
