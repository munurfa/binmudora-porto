{!!Form::hidden('ku_id', $id)!!}



<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama_usaha', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Usaha"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Alamat</label>
	<div class="col-sm-8" >
		
		{!!Form::textarea('alamat', null, ["class"=>"form-control1","placeholder"=>"Masukkan Alamat","style"=>"height:100px"])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Ketua</label>
	<div class="col-sm-8" >
		
		{!!Form::text('ketua', null, ["class"=>"form-control1","placeholder"=>"Masukkan Ketua"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">NPWP</label>
	<div class="col-sm-8" >
		
		{!!Form::text('npwp', null, ["class"=>"form-control1","placeholder"=>"Masukkan NPWP"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kondisi</label>
	<div class="col-sm-8">
		
		{!!Form::select('status', ["Aktif"=>"Aktif","Non-Aktif"=>"Non-Aktif"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>


