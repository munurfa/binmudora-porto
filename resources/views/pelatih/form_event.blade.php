{!!Form::hidden('id_pelatih', $id)!!}
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tingkat</label>
	<div class="col-sm-8">
		
		{!!Form::select('tingkat', ['Daerah / Kab Kota'=>'Daerah / Kab Kota','Provinsi'=>'Provinsi','Nasional'=>'Nasional','Internasional'=>'Internasional'], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama_event_pelatih', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Event"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tahun Penyelenggaraan</label>
	<div class="col-sm-8">
		
		{!!Form::text('tahun', null, ["class"=>"form-control1","placeholder"=>"Masukkan Tahun"])!!}
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Emas</label>
	<div class="col-sm-8" >
		
		{!!Form::text('emas', null, ["class"=>"form-control1","placeholder"=>"Masukkan Jumlah Emas"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Perak</label>
	<div class="col-sm-8" >
		
		{!!Form::text('perak', null, ["class"=>"form-control1","placeholder"=>"Masukkan Jumlah Perak"])!!}
	</div>
	
</div><div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Perunggu</label>
	<div class="col-sm-8" >
		
		{!!Form::text('perunggu', null, ["class"=>"form-control1","placeholder"=>"Masukkan Jumlah Perunggu"])!!}
	</div>
	
</div>

