@extends('layouts.dash.index')
@section('title','Artikel')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Data Artikel 
  	 <a href="{{url("artikel/create")}}" class="btn btn-danger">Tambah Data</a></h3>
 

  	 {!!Form::open(['method'=>'get','url'=>'artikel/cari/','id'=>'formcari'])!!}
  	 	<label class="control-label">Cari Berdasarkan Nama lalu tekan Enter</label>
  	 	{!!Form::text('keyword', '', ['class'=>'form-control1','style'=>'margin-right:5px','placeholder'=>'Cari Berdasarkan Nama','id'=>'cari'])!!}
  	 {!!Form::close()!!}



  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			<br>
  	 <script>

  	 $(document).ready(function () {
  	 	
		$("#cari").change(function() {
		
		  var cari =  $("#cari").val() ;
		  $("#formcari").attr("action", "{!!url("artikel/cari/")!!}"+"/"+cari);
		});
  	 })
		


  	 </script>
  	 <h5 style="color: black">
					@if($keyword!="")
						Pencarian dengan Keyword "{{$keyword}}"
					@endif
					( {{$all_artikel->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="50px">ID</th>
								<th>Judul</th>
								<th width="10%">Kategori</th>
								<th width="15%">Post Date</th>
								
							</tr>
						</thead>
						<tbody>
							@foreach($artikel as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td>{{$a->id}}</td>
									
									
									<td><a href="{{url("artikel/$a->id/edit")}}">{{$a->judul}}</a></td>
									
									<td>{{$a->kategori}}</td>
									<td>{{date('d F Y', strtotime($a->created_at))}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $artikel->render() !!}
				</div>
	</div>



@endsection