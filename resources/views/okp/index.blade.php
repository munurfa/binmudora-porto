@extends('layouts.dash.index')
@section('title','Organisasi Kepemudaan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Organisasi Kepemudaan 
  	 <a href="{{url("okp/create")}}" class="btn btn-danger">Tambah Data</a></h3>
 

{{--   	 {!!Form::open(['url'=>'atlit/cari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1 col-md-5','style'=>'width:40%;margin-right:5px','placeholder'=>'Cari Berdasarkan Nama'])!!}
  	 
		
  	 	{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!}
 --}}


  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
		{{-- 		 {!!Form::open(['url'=>'atlit/sortby'])!!}
				 <h5>Sort By Cabang</h5>
  	 	{!!Form::select('cabang', $cabang, null, ['class' => 'form-control1 col-md-6','style'=>'width:40%;margin-right:5px'])!!}
		
  	 	{!!Form::submit('Kelompokkan', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!}<br> --}}
  	 <h5 style="color: black">
					{{--@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif--}}
					( {{$okp->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama</th>
								<th width="200px">Alamat</th>
								<th width="100px">Kab / Kota</th>
								<th width="100px">Ketua</th>
							</tr>
						</thead>
						<tbody>
							@foreach($okp as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td>
									<a class="btn btn-primary" href="{{url("okp/struktur/$a->id_okp")}}"><i class="fa fa-user"></i></a>
							
									</td>
								
									<td><a href="{{url("okp/$a->id_okp/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->ketua}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $okp->render() !!}
				</div>
	</div>

  

@endsection