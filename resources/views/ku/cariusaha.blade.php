@extends('layouts.dash.index')
@section('title','Wirausaha')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Wirausaha
<a href="{{url("wirausaha/struktur/$kus->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$kus->nama}}</h3>
  {!!Form::open(['method'=>'get','url'=>'wirausaha/struktur/'.$kus->id.'/cari','id'=>'formcari'])!!}
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 
		
  	 	
  	 {!!Form::close()!!}
  	 <script >
  	 	 $(document).ready(function () {

		$("#cari").change(function() {
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("wirausaha/struktur/$kus->id/cari/")!!}"+"/"+ cari);
		});
  	 })
  	 </script>




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	<h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$ku_st_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="300px">Nama</th>
								<th >ketua</th>
								<th >NPWP</th>
								<th >Status</th>
							</tr>
						</thead>
						<tbody>
							@foreach($ku_st as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("wirausaha/struktur/$a->id/edit")}}">{{$a->nama_usaha}}</a></td>
									<td>{{$a->ketua}}</td>
									<td>{{$a->npwp}}</td>
									<td>{{$a->status}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $ku_st->render() !!}
				</div>
	</div>

 

@endsection