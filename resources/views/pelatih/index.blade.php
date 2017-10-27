@extends('layouts.dash.index')
@section('title','Pelatih')
@section('main')
<div class="col-md-12 graphs">
	<div class="xs">
		<h3>Data Pelatih 
		<a href="{{url("pelatih/create")}}" class="btn btn-danger">Tambah Data</a></h3>
		<label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
		 {!!Form::open(['method'=>'get','url'=>'pelatih/cari','id'=>'formcari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 
		{{-- 
  	 	{!!Form::submit('Cari', ['class'=>'btn btn-danger'])!!} --}}
  	 {!!Form::close()!!}
		
		<div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
			<div class="panel-body no-padding">
			 {!!Form::open(['method'=>'get','url'=>'pelatih/sortby/001','id'=>'formsort'])!!}
				 <h5>Sort By Cabang</h5>
  	 	{!!Form::select('cabang', $cabang, null, ['class' => 'form-control1 col-md-6','style'=>'width:40%;margin-right:5px','id'=>'cabang'])!!}
		
  	 	{!!Form::submit('Kelompokkan', ['class'=>'btn btn-danger'])!!}
  	 {!!Form::close()!!}<br>
  	 	 <script>

  	 $(document).ready(function () {
  	 	$("#cabang").change(function() {
		  var action =  $("#cabang").val() ;
		  $("#formsort").attr("action", "{!!url("pelatih/sortby/")!!}"+"/"+ action);
		});
		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("pelatih/cari/")!!}"+"/"+cari);
		});
  	 });
		


  	 </script>
  	 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$pelatih_all->count() }} Data Ditemukan)
				</h5>
				<table class="table table-striped table-responsive table-bordered text-center">
					<thead>
						<tr class="warning">
							<th width="10px">No</th>
							<th width="20px">Action</th>
							<th width="130px">Foto</th>
							<th>Nama</th>
							<th width="100px">Cabang</th>
							<th width="100px">Jenis</th>
							<th width="100px">Kab / Kota</th>
						</tr>
					</thead>
					<tbody>
						@foreach($pelatih as $a)
						<tr>
							
							<td>{{$no++}}</td>
							<td width="120px">
								<a class="btn btn-primary btn-sm" style="margin:3px" href="{{url("pelatih/event/$a->id")}}">
									<i class="fa fa-th-list"></i>
								</a>
								<a class="btn btn-primary btn-sm" style="margin:3px" href="{{url("pelatih/serti/$a->id")}}">
									<i class="fa fa-check"></i>
								</a>
								<a class="btn btn-primary btn-sm" style="margin:3px" href="{{url("pelatih/riwayat/$a->id")}}">
									<i class="fa fa-close"></i>
								</a>
								
							</td>
							<td>
								@if($a->foto == "")
								<img src="{{asset("images/no_user.jpg")}}">
								@else
								<img src="{{asset("public/foto/pelatih/".$a->foto)}}" width="120px" height="160px">
								@endif
							</td>
							<td><a href="{{url("pelatih/$a->id/edit")}}">{{$a->nama}}</a></td>
							<td>{{$a->nama_cab}}</td>
							<td>{{$a->nama_jenis}}</td>
							<td>{{$a->kota_kab}}</td>
							
							
						</tr>
						@endforeach
					</tbody>
				</table>
				{!! $pelatih->render() !!}
			</div>
		</div>

@endsection