{!!Form::hidden('id_wasit', $id)!!}
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tingkat</label>
	<div class="col-sm-8">
		
		{!!Form::select('tingkat', ['Daerah / Kab Kota'=>'Daerah / Kab Kota','Provinsi'=>'Provinsi','Nasional'=>'Nasional','Internasional'=>'Internasional'], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama_event_wasit', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Event"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tahun Penyelenggaraan</label>
	<div class="col-sm-8">
		
		{!!Form::text('tahun', null, ["class"=>"form-control1","placeholder"=>"Masukkan Tahun"])!!}
	</div>
	
</div>


