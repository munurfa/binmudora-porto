@extends('layouts.dash.index')
@section('title','Report Keolahragaan')
@section('main')
<div class="xs">
	<h3>Report Keolahragaan</h3>
	
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'report/olahraga','class'=>'form-horizontal','target'=>'_blank'])!!}
				<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis Report</label>
	<div class="col-sm-8">
		
		{!!Form::select('pilih', ["atlit"=>"REPORT ATLIT","wasit"=>"REPORT WASIT","pelatih"=>"REPORT PELATIH",], null, ['class' => 'form-control1'])!!}

		
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Cabang</label>
	<div class="col-sm-8">
		
		{!!Form::select('cabang', $cabang, null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>
 {{--
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kab / Kota</label>
	<div class="col-sm-8">
		
	
			{!!Form::select('kota_kab', ["" => "Pilih Kab/Kota","Kabupaten Pemalang" => "Kabupaten Pemalang"], null, ['class' => 'form-control1'])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis</label>
	<div class="col-sm-8">
		
		{!!Form::select('jenis', $jenis, null, ['class' => 'form-control1'])!!}
	</div>
	
</div> --}}

				<div class="panel-footer">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						
						
						{!!Form::submit('Lihat', ['class'=>'btn btn-warning'])!!}
						
					</div>
				</div>
			</div>
			{!!Form::close()!!}
			
		</div>
	</div>
</div>


@endsection