@extends('layouts.dash.index')
@section('title','Event Pelatih')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Event Pelatih
  	 <a href="{{url("pelatih/event/$pelatih->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$pelatih->nama_cab." - ".$pelatih->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$pelatih_ev->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th>Nama</th>
								<th width="20px">Tingkat</th>
								<th width="100px">Tahun</th>
								<th width="100px">Emas</th>
								<th width="100px">Perak</th>
								<th width="10px">Perunggu</th>
							</tr>
						</thead>
						<tbody>
							@foreach($pelatih_ev as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("pelatih/event/$a->id_event_pelatih/edit")}}">{{$a->nama_event_pelatih}}</a></td>
									<td>{{$a->tingkat}}</td>
									<td>{{$a->tahun}}</td>
									<td>{{$a->emas}}</td>
									<td>{{$a->perak}}</td>
									<td>
										{{$a->perunggu}}
									</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $pelatih_ev->render() !!}
				</div>
	</div>


@endsection