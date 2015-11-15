@extends('layouts.dash.index')
@section('title','Edit Data Kepramukaan')
@section('main')
<div class="xs">
	<h3>Edit Data Kepramukaan</h3>
	@if (count($errors) > 0)
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Perhatikan : </strong> 
		{!!HTML::ul($errors->all())!!}
	</div>
	@endif
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::model($pra,['url'=>'kepanduan/'.$pra->id_pramuka,'class'=>'form-horizontal','method'=>'patch'])!!}
				@include('pramuka.form')
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-3 col-sm-offset-2">
						
						
						{!!Form::submit('Update Data', ['class'=>'btn btn-warning'])!!}
						{!!Form::close()!!}
					</div>
					<div>	
						{!! Form::open(array('method'=>'delete','url'=>'kepanduan/'.$pra->id_pramuka)) !!}
						{!!Form::hidden('_delete', 'DELETE')!!}
						{!!Form::submit('Hapus Data', ['class'=>'btn btn-danger'])!!}
						{!!Form::close()!!}
						
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
@endsection