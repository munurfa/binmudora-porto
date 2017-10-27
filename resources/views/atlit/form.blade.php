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
	<div class="col-sm-8" data-target="#editor">
		
		{!!Form::textarea('alamat', null, ["class"=>"form-control1","placeholder"=>"Masukkan Alamat","style"=>"height:100px","id"=>"editor"])!!} 
		
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
	<label for="focusedinput" class="col-sm-2 control-label">Tinggi Badan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('tinggi_badan', 0, ["class"=>"form-control1","placeholder"=>"Masukkan Tinggi Badan",'style'=>'width:40%'])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Berat Badan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('berat_badan', 0, ["class"=>"form-control1","placeholder"=>"Masukkan Berat Badan",'style'=>'width:40%'])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Spesialis</label>
	<div class="col-sm-8" >
		
		{!!Form::text('spesialis', null, ["class"=>"form-control1","placeholder"=>"Masukkan Spesialis"])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Potensial</label>
	<div class="col-sm-8" >
		
		{!!Form::select('potensial', ['Ya'=>'Ya','Tidak'=>'Tidak'], null, ['class'=>'form-control1'])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Status</label>
	<div class="col-sm-8" >
		
		{!!Form::select('status', ['Aktif'=>'Aktif','Non-Aktif'=>'Non-Aktif'], null, ['class'=>'form-control1'])!!}
	</div>
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tanggal Status</label>
	<div class="col-sm-8" >
		
		{!!Form::text('tanggal_status', null, ["class"=>"form-control1 datepicker","style"=>"width:30%","placeholder"=>"dd/mm/yyy"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Foto</label>
	<div class="col-sm-8">
		
		{!!Form::file('foto', ["class"=>"form-control1"])!!}
	</div>
	
</div>