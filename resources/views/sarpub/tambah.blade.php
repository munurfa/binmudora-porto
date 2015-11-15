@extends('layouts.dash.index')
@section('title','Tambah Data Sarana Area Publik')
@section('main')
<div class="xs">
	<h3>Tambah Data Sarana Area Publik</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'sarana/public/','class'=>'form-horizontal'])!!}
				@include('sarpub.form')

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