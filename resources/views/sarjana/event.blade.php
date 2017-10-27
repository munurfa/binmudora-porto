@extends('layouts.dash.index')
@section('title','Event Sarjana')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Event Sarjana
  	 <a href="{{url("sp/event/$sar->id_sarjana/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$sar->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$sar_ev_all->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th>Nama</th>
								<th width="200px">Tingkat</th>
								<th width="100px">Tahun</th>
							</tr>
						</thead>
						<tbody>
							@foreach($sar_ev as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("sp/event/$a->id_event/edit")}}">{{$a->nama_event_sarjana}}</a></td>
									<td>{{$a->tingkat}}</td>
									<td>{{$a->tahun}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $sar_ev->render() !!}
				</div>
	</div>

  
@endsection