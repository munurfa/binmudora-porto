{!!Form::hidden('id_atlit', $id)!!}
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tingkat</label>
	<div class="col-sm-8">
		
		{!!Form::select('tingkat', ['Daerah / Kab Kota'=>'Daerah / Kab Kota','Provinsi'=>'Provinsi','Nasional'=>'Nasional','Internasional'=>'Internasional'], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>


<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama_event_atlit', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Event"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Tahun Penyelenggaraan</label>
	<div class="col-sm-8">
		
		{!!Form::text('tahun', null, ["class"=>"form-control1","placeholder"=>"Masukkan Tahun"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Medali</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('medali', ["Emas" => "Emas","Perak" => "Perak","Perunggu"=>"Perunggu"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kelas</label>
	<div class="col-sm-8" >
		
		{!!Form::text('kelas', null, ["class"=>"form-control1","placeholder"=>"Masukkan Kelas"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Peringkat</label>
	<div class="col-sm-8" >
		
		{!!Form::text('peringkat', null, ["class"=>"form-control1","placeholder"=>"Masukkan Peringkat",'style'=>'width:40%'])!!}
	</div>
</div>
