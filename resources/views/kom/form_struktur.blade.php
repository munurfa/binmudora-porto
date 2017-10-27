{!!Form::hidden('id_event', $id)!!}


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Cabang</label>
	<div class="col-sm-8">
		
		{!!Form::select('cabang', $cab, null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jabatan</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('jabatan', ["Atlit" => "Atlit","Pelatih" => "Pelatih","Official"=>"Official","Wasit"=>"Wasit"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama_kontingen', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Kontingen"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tempat / Tanggal Lahir</label>
	<div class="col-sm-8" >
		
		{!!Form::text('tmp_lahir', null, ["class"=>"form-control1","placeholder"=>"Masukkan Tempat Lahir",'style'=>'width:40%'])!!}
		{!!Form::text('tgl_lahir', null, ["class"=>"form-control1 datepicker","style"=>"width:30%","placeholder"=>"dd/mm/yyy"])!!}
	
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Alamat</label>
	<div class="col-sm-8" >
		
		{!!Form::textarea('alamat', null, ["class"=>"form-control1","placeholder"=>"Masukkan Alamat","style"=>"height:100px"])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis Kelamin</label>
	<div class="col-sm-8" >
		{!!Form::select('jenis_kel', ["Laki-Laki" => "Laki-Laki","Perempuan" => "Perempuan"], null, ['class' => 'form-control1'])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">No Telp / HP</label>
	<div class="col-sm-8">
		
		{!!Form::text('no_telp', null, ["class"=>"form-control1","placeholder"=>"Masukkan No Telp / HP"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tinggi Badan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('berat', null, ["class"=>"form-control1","style"=>"width:20%","placeholder"=>"Tinggi"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Berat Badan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('berat', null, ["class"=>"form-control1","style"=>"width:20%","placeholder"=>"Berat"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Foto</label>
	<div class="col-sm-8">
		
		{!!Form::file('foto', ["class"=>"form-control1"])!!}
	</div>
	
</div>


