@extends('layouts.dash.index')
@section('title','Event Wasit')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Event Wasit
  	 <a href="{{url("wasit/event/$wasit->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$wasit->nama_cab." - ".$wasit->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$wasit_ev->count() }} Data Ditemukan)
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
							@foreach($wasit_ev as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("wasit/event/$a->id_event_wasit/edit")}}">{{$a->nama_event_wasit}}</a></td>
									<td>{{$a->tingkat}}</td>
									<td>{{$a->tahun}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $wasit_ev->render() !!}
				</div>
	</div>

  
@endsection