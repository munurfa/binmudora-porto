{!!Form::hidden('id_okp', $id)!!}



<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Anggota"])!!}
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
	<label for="focusedinput" class="col-sm-2 control-label">Jabatan</label>
	<div class="col-sm-8">
		
		{!!Form::text('jabatan', null, ["class"=>"form-control1","placeholder"=>"Masukkan Jabatan"])!!}
	</div>
	
</div>


