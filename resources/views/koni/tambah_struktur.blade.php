@extends('layouts.dash.index')
@section('title','Tambah Data Struktur Koni')
@section('main')
<div class="xs">
	<h3>Tambah Data Struktur Koni</h3>
	@if (count($errors) > 0)
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Perhatikan : </strong> 
		{!!HTML::ul($errors->all())!!}
	</div>
	@endif
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'koni/struktur','class'=>'form-horizontal'])!!}
				@include('koni.form_struktur')

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