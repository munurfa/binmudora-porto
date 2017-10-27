@extends('layouts.dash.index')
@section('title','Event Kepemudaan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Event Kepemudaan
  	 <a href="{{url("eventkepemudaan/create")}}" class="btn btn-danger">Tambah Data</a></h3>
   	 {!!Form::open(['method'=>'get','url'=>'eventkepemudaan/cari','id'=>'formcari'])!!}
   	 <label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  
  	 {!!Form::close()!!}
  	   		 <script>

  	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("eventkepemudaan/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$ep_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama</th>
								<th width="100px">Tahun</th>
							</tr>
						</thead>
						<tbody>
							@foreach($ep as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td >{{----}}
									<a class="btn btn-primary btn-sm" href="{{url("eventkepemudaan/peserta/$a->id")}}"><i class="fa fa-user"></i></a>
								
									</td>
									
									<td><a href="{{url("eventkepemudaan/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->tahun}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $ep->render() !!}
				</div>
	</div>


@endsection