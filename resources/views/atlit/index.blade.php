@extends('layouts.dash.index')
@section('title','Atlit')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Atlit 
  	 <a href="{{url("atlit/create")}}" class="btn btn-danger">Tambah Data</a></h3>
 

  	 {!!Form::open(['method'=>'get','url'=>'atlit/cari/','id'=>'formcari'])!!}
  	 	<label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 {!!Form::close()!!}



  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
 @if(Auth::user()->cabang=="000")				
				 {!!Form::open(['url'=>'atlit/sortby/001','id'=>'formsort','method'=>'get'])!!}
				 <h5>Sort By Cabang</h5>
  	 	{!!Form::select('cabang', $cabang, null, ['class' => 'form-control1 col-md-6','style'=>'width:40%;margin-right:5px','id'=>'cabang'])!!}
		
  	 	{!!Form::submit('Kelompokkan', ['class'=>'btn btn-danger'])!!}

  	 {!!Form::close()!!}<br>
  	 <script>

  	 $(document).ready(function () {
  	 	$("#cabang").change(function() {
		  var action =  $("#cabang").val() ;
		  $("#formsort").attr("action", "{!!url("atlit/sortby/")!!}"+"/" + action);
		});
		$("#cari").change(function() {
		
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("atlit/cari/")!!}"+"/"+cari);
		});
  	 })
  	 </script>
	   @endif
  	 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$all_atlit->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th width="130px">Foto</th>
								<th>Nama</th>
								<th width="20px">Gender</th>
								<th width="100px">Cabang</th>
								<th width="100px">Spesialis</th>
								<th width="100px">Jenis</th>
								<th width="10px">Status</th>
							</tr>
						</thead>
						<tbody>
							@foreach($atlit as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td>
									<a class="btn btn-primary" href="{{url("atlit/event/$a->id")}}"><i class="fa fa-th-list"></i></a>
								
									</td>
									<td>
									@if($a->foto == "")
										<img src="{{asset("images/no_user.jpg")}}">
									@else
										<img src="{{asset("public/foto/atlit/".$a->foto)}}" width="120px" height="160px">
									@endif
									</td>
									<td><a href="{{url("atlit/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->jenis_kel}}</td>
									<td>{{$a->nama_cab}}</td>
									<td>{{$a->spesialis}}</td>
									<td>{{$a->nama_jenis}}</td>
									<td>
										@if($a->status == "Aktif")
											<i class="fa fa-check"></i>
										@else
											<i class="fa fa-times"></i>
										@endif 
									</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $atlit->render() !!}
				</div>
	</div>



@endsection