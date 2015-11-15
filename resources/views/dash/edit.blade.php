@extends('layouts.dash.index')
@section('title','Edit Data Admin')
@section('main')
<div class="xs">
	<h3>Edit Data Admin</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::open(['url'=>'dashboard/edit','class'=>'form-horizontal','method'=>'put'])!!}
				@include('dash.form')
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-3 col-sm-offset-2">
						
						
						{!!Form::submit('Update Data', ['class'=>'btn btn-warning'])!!}
						<a href="{{url("dashboard")}}" class="btn btn-danger">Batal</a>
						{!!Form::close()!!}
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
</div>
@endsection