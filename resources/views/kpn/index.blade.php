@extends('layouts.dash.index')
@section('title','KPN')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Kapal Pemuda Nusantara 
  	 <a href="{{url("kpn/create")}}" class="btn btn-danger">Tambah Data</a></h3>
 

  	 {!!Form::open(['method'=>'get','url'=>'kpn/cari/','id'=>'formcari'])!!}
  	 	<label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 {!!Form::close()!!}



  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <script>

  	 $(document).ready(function () {
  	 	
		$("#cari").change(function() {
		
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("kpn/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>
  	 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$kpn_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="130px">Foto</th>
								<th>Nama</th>
								<th width="20px">Gender</th>
								<th width="100px">Kab / Kota</th>
								<th width="100px">tahun</th>
							</tr>
						</thead>
						<tbody>
							@foreach($kpn as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td>
									@if($a->foto == "")
										<img src="{{asset("images/no_user.jpg")}}">
									@else
										<img src="{{asset("public/foto/kpn/".$a->foto)}}" width="120px" height="160px">
									@endif
									</td>
									<td><a href="{{url("kpn/$a->id/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->jenis_kel}}</td>
									<td>{{$a->kota_kab}}</td>
									<td>{{$a->tahun}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $kpn->render() !!}
				</div>
	</div>



@endsection