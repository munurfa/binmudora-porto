<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    @if(Auth::check())
    <title>{{Auth::user()->name}} | Log</title>
    @else
    <title>Binmudora Pemalang</title>
    @endif
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
   <link href="{{asset("css/bootstrap-3.1.1.min.css")}}" rel='stylesheet' />
    <!-- Font Awesome -->
    <link href="{{asset("css/font-awesome.css")}}" rel="stylesheet">

    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset("css/login.css")}}">
   

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
     
      <div class="login-box-body">
        <h2 class="text-center"><b>Binmudora Pemalang</b></h2>
        @if(Auth::check())
  <h5 class="text-center"><b>Sudah Masuk sebagai :</b><strong> {!!HTML::link('dashboard', Auth::user()->name)!!} </strong></h5>
  <h5 class="text-center">{!!HTML::link('auth/logout', 'Keluar', ['class'=>'btn btn-danger'])!!}</h5>
  @else
        <form action="login" method="POST">
          <div class="form-group">
            
            {!!Form::text('username',null, ['class'=>'form-control','placeholder'=>'Username'])!!}
          </div>
          <div class="form-group">
            
            {!!Form::password('password', ['class'=>'form-control','placeholder'=>'Password'])!!}
          </div>
          <div class="row">
           
            <div class="col-xs-4">
             
              {!!Form::submit('Masuk', ['class'=>'btn btn-primary btn-block btn-flat'])!!}
            </div><!-- /.col -->
          </div>
          {{ csrf_field() }}
          <input type="hidden" name="_token" value="{{csrf_token()}}"/>
        </form>
@endif


      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="{{asset("js/jquery.min.js")}}"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="{{asset("js/bootstrap.min.js")}}"></script>

  </body>
</html>
