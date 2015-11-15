@extends('layouts.dash.index')
@section('title','Event Atlit')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Event Atlit 
  	 <a href="{{url("atlit/event/$atlit->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$atlit->nama_cab." - ".$atlit->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$atlit_ev->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th>Nama</th>
								<th width="20px">Tingkat</th>
								<th width="100px">Tahun</th>
								<th width="100px">Medali</th>
								<th width="100px">Peringkat</th>
								<th width="10px">Kelas</th>
							</tr>
						</thead>
						<tbody>
							@foreach($atlit_ev as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("atlit/event/$a->id_event_atlit/edit")}}">{{$a->nama_event_atlit}}</a></td>
									<td>{{$a->tingkat}}</td>
									<td>{{$a->tahun}}</td>
									<td>{{$a->medali}}</td>
									<td>{{$a->peringkat}}</td>
									<td>
										{{$a->kelas}}
									</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $atlit_ev->render() !!}
				</div>
	</div>



@endsection