
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
	<label for="focusedinput" class="col-sm-2 control-label">Kondisi</label>
	<div class="col-sm-8">
		
		{!!Form::select('kondisi', ["Baik"=>"Baik","Sedang"=>"Sedang","Rusak"=>"Rusak"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kategori</label>
	<div class="col-sm-8">
		
		{!!Form::select('kategori', ["Gedung Olahraga"=>"Gedung Olah Raga","Lapangan Olah Raga"=>"Lapangan Olah Raga"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Status Kepemilikan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('status_pemilik', null, ["class"=>"form-control1","placeholder"=>"Masukkan Status Kepemilikan"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kapasitas</label>
	<div class="col-sm-8" >
		
		{!!Form::text('kapasitas', null, ["class"=>"form-control1","placeholder"=>"Masukkan Kapasitas"])!!}
	</div>
	
</div>
