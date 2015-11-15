<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Cabang</label>
	<div class="col-sm-8">
		
		{!!Form::select('cabang', $cabang, null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis</label>
	<div class="col-sm-8">
		
		{!!Form::select('jenis', $jenis, null, ['class' => 'form-control1'])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kab / Kota</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('kota_kab', ["" => "Pilih Kab/Kota","Kabupaten Pemalang" => "Kabupaten Pemalang"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Atlit"])!!}
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
	<label for="focusedinput" class="col-sm-2 control-label">No. Telp / HP</label>
	<div class="col-sm-8" >
		
		{!!Form::text('no_telp', null, ["class"=>"form-control1","placeholder"=>"Masukkan No. Telp/HP"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Foto</label>
	<div class="col-sm-8">
		
		{!!Form::file('foto', ["class"=>"form-control1"])!!}
	</div>
	
</div>