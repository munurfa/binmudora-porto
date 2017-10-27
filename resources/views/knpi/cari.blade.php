@extends('layouts.dash.index')
@section('title','Knpi')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Knpi 
  	 <a href="{{url("knpi/create")}}" class="btn btn-danger">Tambah Data</a></h3>
   	 {!!Form::open(['method'=>'get','url'=>'knpi/cari','id'=>'formcari'])!!}
   	 <label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  
  	 {!!Form::close()!!}
  	   		 <script>

  	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("knpi/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					{{--@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif--}}
					( {{$knpi_all->count() }} Data Ditemukan)
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