
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Username</label>
	<div class="col-sm-8">
		
		{!!Form::text('username', Auth::user()->username, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Koni"])!!}
	</div>
	
</div>




<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Password Baru</label>
	<div class="col-sm-8" >
		
		{!!Form::password('password',  ["class"=>"form-control1","placeholder"=>"Masukkan Password Baru"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Konfirmasi Password</label>
	<div class="col-sm-8" >
		
		{!!Form::password('password_confirmation',  ["class"=>"form-control1","placeholder"=>"Konfirmasi Password"])!!}
	</div>
	
</div>
