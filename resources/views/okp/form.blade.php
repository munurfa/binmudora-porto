<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kab / Kota</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('kota_kab', ["" => "Pilih Kab/Kota","Kabupaten Pemalang" => "Kabupaten Pemalang"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama OK</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama OK"])!!}
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
	<div class="col-sm-8">
		
		{!!Form::text('ketua', null, ["class"=>"form-control1","placeholder"=>"Masukkan Ketua"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">No. Telp / HP</label>
	<div class="col-sm-8" >
		
		{!!Form::text('no_telp', null, ["class"=>"form-control1","placeholder"=>"Masukkan No. Telp/HP"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Bidang</label>
	<div class="col-sm-8" >
		
		{!!Form::text('bidang', null, ["class"=>"form-control1","placeholder"=>"Masukkan Bidang"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tanggal Berdiri</label>
	<div class="col-sm-8" >
		

		{!!Form::text('tgl_berdiri', null, ["class"=>"form-control1 datepicker","style"=>"width:30%","placeholder"=>"dd/mm/yyy"])!!}
	
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Dasar Pembentukan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('dasar', null, ["class"=>"form-control1","placeholder"=>"Masukkan Dasar Pembentukan"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Masa Kepengurusan</label>
	<div class="col-sm-8" >
		
		{!!Form::text('masa', null, ["class"=>"form-control1","placeholder"=>"Masukkan Dasar Pembentukan"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis Organisasi</label>
	<div class="col-sm-8" >
		{!!Form::select('jenis', ["Organisasi Masyarakat" => "Organisasi Masyarakat","Kemasyarakatan" => "Kemasyarakatan"], null, ['class' => 'form-control1'])!!}
	</div>
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">No Reg Kesbangpolinmas</label>
	<div class="col-sm-8" >
		
		{!!Form::text('no_reg', null, ["class"=>"form-control1","placeholder"=>"Masukkan No Reg",'style'=>'width:40%'])!!}
	</div>
</div>
