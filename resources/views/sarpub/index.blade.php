@extends('layouts.dash.index')
@section('title','Sarana Area Publik')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Sarana Area Publik 
  	 <a href="{{url("sarana/public/create")}}" class="btn btn-danger">Tambah Data</a></h3>

 {!!Form::open(['url'=>'sarana/public/cari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1 col-md-5','style'=>'width:40%;margin-right:5px','placeholder'=>'Cari Berdasarkan Nama'])!!}
  	 
		
  	 	{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!}
  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$sarpub->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="200px">Nama</th>
								<th >Alamat</th>
								<th >Kab / Kota</th>
								<th>kondisi</th>
							</tr>
						</thead>
						<tbody>
							@foreach($sarpub as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									
									<td><a href="{{url("sarana/public/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->kondisi}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $sarpub->render() !!}
				</div>
	</div>



@endsection