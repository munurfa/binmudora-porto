@extends('layouts.dash.index')
@section('title','Report Kepemudaan')
@section('main')
<div class="xs">
	<h3>Report Kepemudaan</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'report/kepemudaan','class'=>'form-horizontal','target'=>'_blank'])!!}
				<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Jenis Report</label>
	<div class="col-sm-8">
		
		{!!Form::select('pilih', ["okp"=>"Report Organisasi Kepemudaan","knpi"=>"Report KNPI","pra"=>"Report Kepramukaan","sp"=>"Report Sarjana Penggerak Pembangunan"], null, ['class' => 'form-control1'])!!}
		
	</div>
	
</div>

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