@extends('layouts.dash.index')
@section('title','Event')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Event/Kompetisi
  	 <a href="{{url("event/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	  {!!Form::open(['method'=>'get','url'=>'event/cari','id'=>'formcari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 
		
  	 	{{--{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!}--}}
  	 {!!Form::close()!!}
  	 <script >
  	 	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("event/cari/")!!}"+"/"+cari);
		});
  	 })
  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$kom->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama</th>
								<th width="250px">Tanggal</th>
								<th width="250px">Level</th>
							</tr>
						</thead>
						<tbody>
							@foreach($kom as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td>
									<a class="btn btn-primary btn-sm" href="{{url("event/kontingen/$a->id")}}"><i class="fa fa-list"></i></a>
								
									</td>
									
									<td><a href="{{url("event/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->tgl_mulai." s/d ".$a->tgl_akhir}}</td>
									<td>{{$a->level}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $kom->render() !!}
				</div>
	</div>


@endsection