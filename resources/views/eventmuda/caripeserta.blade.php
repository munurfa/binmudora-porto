@extends('layouts.dash.index')
@section('title','Peserta Event Kepemudaan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Peserta Event Kepemudaan
<a href="{{url("eventkepemudaan/peserta/$eps->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$eps->nama}}</h3>
  {!!Form::open(['method'=>'get','url'=>'eventkepemudaan/peserta/'.$eps->id.'/cari','id'=>'formcari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 
		
  	 	
  	 {!!Form::close()!!}
  	 <script >
  	 	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("eventkepemudaan/peserta/$eps->id/cari/")!!}"+"/"+ cari);
		});
  	 })
  	 </script>




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$ep_st_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="300px">Nama</th>
								<th width="100px">Kelompok</th>
								<th width="100px">Kab / Kota</th>
								
							</tr>
						</thead>
						<tbody>
							@foreach($ep_st as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("eventkepemudaan/peserta/$a->id_peserta/edit")}}">{{$a->nama_peserta}}</a></td>
									<td>{{$a->kelompok}}</td>
									<td>{{$a->kota_kab}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $ep_st->render() !!}
				</div>
	</div>

 

@endsection