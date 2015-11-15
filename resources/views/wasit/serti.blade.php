@extends('layouts.dash.index')
@section('title','Sertifikasi Wasit')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Sertifikasi Wasit
  	 <a href="{{url("wasit/serti/$wasit->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$wasit->nama_cab." - ".$wasit->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$wasit_se->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th>Nama</th>
								<th width="100px">Tahun</th>
								
							</tr>
						</thead>
						<tbody>
							@foreach($wasit_se as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("wasit/serti/$a->id_serti_wasit/edit")}}">{{$a->nama_serti_wasit}}</a></td>
									
									<td>{{$a->tahun}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $wasit_se->render() !!}
				</div>
	</div>



@endsection