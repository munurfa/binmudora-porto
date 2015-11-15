<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tingkat</label>
	<div class="col-sm-8">
		
		{!!Form::select('tingkat', ["Daerah/Kab.Kota"=>"Daerah/Kab.Kota","Provinsi"=>"Provinsi"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Koni"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Alamat</label>
	<div class="col-sm-8" >
		
		{!!Form::textarea('alamat', null, ["class"=>"form-control1","placeholder"=>"Masukkan Alamat","style"=>"height:100px"])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kab / Kota</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('kota_kab', ["" => "Pilih Kab/Kota","Kabupaten Pemalang" => "Kabupaten Pemalang"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">No. Telp / HP</label>
	<div class="col-sm-8" >
		
		{!!Form::text('no_telp', null, ["class"=>"form-control1","placeholder"=>"Masukkan No. Telp/HP"])!!}
	</div>
	
</div>
