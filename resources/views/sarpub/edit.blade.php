@extends('layouts.dash.index')
@section('title','Edit Data Sarana Area Publik')
@section('main')
<div class="xs">
	<h3>Edit Data Sarana Area Publik</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			
			{!!Form::model($sarpub,['url'=>'sarana/public/'.$sarpub->id,'class'=>'form-horizontal','method'=>'patch'])!!}
				@include('sarpub.form')
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-3 col-sm-offset-2">
						
						
						{!!Form::submit('Update Data', ['class'=>'btn btn-warning'])!!}
						{!!Form::close()!!}
					</div>
					<div>	
						{!! Form::open(array('method'=>'delete','url'=>'sarana/public/'.$sarpub->id)) !!}
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