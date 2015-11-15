@extends('layouts.dash.index')
@section('title','Tambah Data Knpi')
@section('main')
<div class="xs">
	<h3>Tambah Data Knpi</h3>
			@if (count($errors) > 0)
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Perhatikan : </strong> 
		{!!HTML::ul($errors->all())!!}
	</div>
	@endif
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'knpi','class'=>'form-horizontal'])!!}
				@include('knpi.form')

				<div class="panel-footer">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						
						
						{!!Form::submit('Tambah Data Baru', ['class'=>'btn btn-warning'])!!}
						
					</div>
				</div>
			</div>
			{!!Form::close()!!}
			
		</div>
	</div>
</div>


@endsection