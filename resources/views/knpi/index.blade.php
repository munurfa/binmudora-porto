@extends('layouts.dash.index')
@section('title','Knpi')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Knpi 
  	 <a href="{{url("knpi/create")}}" class="btn btn-danger">Tambah Data</a></h3>
{{--   	 {!!Form::open(['url'=>'koni/cari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1 col-md-5','style'=>'width:40%;margin-right:5px','placeholder'=>'Cari Berdasarkan Nama'])!!}
  	 
		
  	 	{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!} --}}

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					{{--@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif--}}
					( {{$knpi->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama Knpi</th>
								<th >Alamat</th>
								<th >Kab / Kota</th>
								<th width="100px">Tingkat</th>
							</tr>
						</thead>
						<tbody>
							@foreach($knpi as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td >{{----}}
									<a class="btn btn-primary btn-sm" href="{{url("knpi/struktur/$a->id_knpi")}}"><i class="fa fa-user"></i></a>
								
									</td>
									
									<td><a href="{{url("knpi/$a->id_knpi/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->tingkat}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $knpi->render() !!}
				</div>
	</div>


@endsection