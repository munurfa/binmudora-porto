@extends('layouts.dash.index')
@section('title','Kepramukaan')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Kepramukaan
  	 <a href="{{url("kepanduan/create")}}" class="btn btn-danger">Tambah Data</a></h3>
 {!!Form::open(['method'=>'get','url'=>'kepanduan/cari','id'=>'formcari'])!!}
   	 <label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  
  	 {!!Form::close()!!}
  	   		 <script>

  	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("kepanduan/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>

  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				 <h5 style="color: black">
					{{--@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif--}}
					( {{$pra_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered ">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>{{-- 
								<th width="20px">Action</th> --}}
								
								<th>Nama</th>
								<th >Alamat</th>
								<th >Kab / Kota</th>
								<th width="30px">Siaga L</th>

								<th width="30px">Siaga P</th>

								<th width="30px">Penggalang L</th>
								<th width="30px">Penggalang P</th>
								
								
							</tr>
						</thead>
						<tbody>
							@foreach($pra as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td >
									<a class="btn btn-primary btn-sm" href="{{url("kepanduan/struktur/$a->id_pramuka")}}"><i class="fa fa-user"></i></a>
								
									</td>
									
									<td><a href="{{url("kepanduan/$a->id_pramuka/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->alamat}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->siaga_l}}</td>
									<td>{{$a->siaga_p}}</td>
									<td>{{$a->penggalang_l}}</td>
									<td>{{$a->penggalang_p}}</td>
									
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $pra->render() !!}
				</div>
	</div>


@endsection