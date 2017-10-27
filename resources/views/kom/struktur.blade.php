@extends('layouts.dash.index')
@section('title','Kontingen')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Kontingen
  	 <a href="{{url("event/kontingen/$kon->id/create")}}" class="btn btn-danger">Tambah Data</a>
  	   	 <a href="{{url("report/event/$kon->id/kontingen")}}" class="btn btn-danger" target="_blank">Print Data</a>
  	 </h3>
  	 <h3>{{$kon->nama}}</h3>
 
  	
  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$kon_st_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">

						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th width="20px">Action</th>
								<th>Nama</th>
								<th width="200px">Posisi</th>
								<th width="200px">Cabang</th>
							</tr>
						</thead>
						<tbody>
							@foreach($kon_st as $a)
							<tr>
								
									<td>{{$no++}}</td>
									<td>
									<a class="btn btn-primary btn-sm" href="{{url("event/kontingen/$a->id_event/card/$a->id_kontingen")}}" target="_blank"><i class="fa fa-print fa-lg" ></i></a>
								
									</td>
									<td><a href="{{url("event/kontingen/$a->id_kontingen/edit")}}">{{$a->nama_kontingen}}</a></td>
									<td>{{$a->jabatan}}</td>
									<td>{{$a->cabang}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $kon_st->render() !!}
				</div>
	</div>



@endsection