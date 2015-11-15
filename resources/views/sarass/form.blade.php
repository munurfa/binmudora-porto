
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Koni"])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tahun</label>
	<div class="col-sm-8" >
		
		{!!Form::selectYear('tahun',1950,2040,null,["class"=>"form-control1"])!!}
		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kondisi</label>
	<div class="col-sm-8">
		
		{!!Form::select('kondisi', ["Baik"=>"Baik","Sedang"=>"Sedang","Rusak"=>"Rusak"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
