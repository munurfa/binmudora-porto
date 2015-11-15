@extends('layouts.dash.index')
@section('title','Sarana Asset')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Sarana Asset 
  	 <a href="{{url("sarana/asset/create")}}" class="btn btn-danger">Tambah Data</a></h3>

 {!!Form::open(['url'=>'sarana/asset/cari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1 col-md-5','style'=>'width:40%;margin-right:5px','placeholder'=>'Cari Berdasarkan Nama'])!!}
  	 
		
  	 	{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!}

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$sarass->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="50%">Nama</th>
								<th >tahun</th>
								<th>kondisi</th>
							</tr>
						</thead>
						<tbody>
							@foreach($sarass as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									
									<td><a href="{{url("sarana/asset/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->tahun}}</td>
									<td>{{$a->kondisi}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $sarass->render() !!}
				</div>
	</div>

  

@endsection