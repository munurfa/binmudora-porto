
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Event"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tanggal Mulai</label>
	<div class="col-sm-8" >
		
		
		{!!Form::text('tgl_mulai', null, ["class"=>"form-control1 datepicker","style"=>"width:30%","placeholder"=>"dd/mm/yyy"])!!}
	
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tanggal Akhir</label>
	<div class="col-sm-8" >
		
		
		{!!Form::text('tgl_akhir', null, ["class"=>"form-control1 datepicker","style"=>"width:30%","placeholder"=>"dd/mm/yyy"])!!}
	
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Level</label>
	<div class="col-sm-8">
		
		{!!Form::text('level', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Level"])!!}
	</div>
	
</div>
