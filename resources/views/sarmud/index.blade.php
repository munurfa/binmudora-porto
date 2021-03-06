@extends('layouts.dash.index')
@section('title','Sarana Kepemudaan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Sarana Kepemudaan 
  	 <a href="{{url("sarana/kepemudaan/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	   {!!Form::open(['method'=>'get','url'=>'sarana/kepemudaan/cari','id'=>'formcari'])!!}
   	 <label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  
  	 {!!Form::close()!!}
  	   		 <script>

  	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("sarana/kepemudaan/cari")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$sarmud_all->count() }} Data Ditemukan)
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
							@foreach($sarmud as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									
									<td><a href="{{url("sarana/kepemudaan/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->kondisi}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $sarmud->render() !!}
				</div>
	</div>

 

@endsection