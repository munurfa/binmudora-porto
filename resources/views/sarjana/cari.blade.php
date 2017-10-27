@extends('layouts.dash.index')
@section('title','Sarjana Penggerak Pembangunan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Sarjana Penggerak Pembangunan
  	 <a href="{{url("sp/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	  {!!Form::open(['method'=>'get','url'=>'sp/cari','id'=>'formcari'])!!}
   	 <label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  
  	 {!!Form::close()!!}
  	   		 <script>

  	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("sp/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					{{--@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif--}}
					( {{$sar_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th >Foto</th>
								<th>Nama</th>
								<th >Alamat</th>
								<th >Kab / Kota</th>
								<th width="100px">Angkatan</th>

								<th width="100px">Sumber Dana</th>

								<th width="100px">Lokasi Penempatan</th>
							</tr>
						</thead>
						<tbody>
							@foreach($sar as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td >{{----}}
									<a class="btn btn-primary btn-sm" href="{{url("sp/event/$a->id_sarjana")}}"><i class="fa fa-list"></i></a>
								
									</td>
									<td>
										<i class="fa fa-close"></i>
									
									</td>
									<td><a href="{{url("sp/$a->id_sarjana/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->angkatan}}</td>
									<td>{{$a->sumber_dana}}</td>
									<td>{{$a->lokasi}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $sar->render() !!}
				</div>
	</div>


@endsection