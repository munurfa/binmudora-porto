@extends('layouts.dash.index')
@section('title','Koni')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Koni 
  	 <a href="{{url("koni/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 {!!Form::open(['method'=>'get','url'=>'koni/cari','id'=>'formcari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 
		
  	 	{{--{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}--}}
  	 {!!Form::close()!!}
  	 <script >
  	 	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("koni/cari/")!!}"+"/"+cari);
		});
  	 })
  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$koni_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama Koni</th>
								<th >Alamat</th>
								<th >Kab / Kota</th>
								<th width="100px">Tingkat</th>
							</tr>
						</thead>
						<tbody>
							@foreach($koni as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td >
									<a class="btn btn-primary btn-sm" href="{{url("koni/struktur/$a->id")}}"><i class="fa fa-user"></i></a>
								
									</td>
									
									<td><a href="{{url("koni/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->tingkat}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $koni->render() !!}
				</div>
	</div>



@endsection