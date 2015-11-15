@extends('layouts.dash.index')
@section('title','Riwayat Pelatih')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Riwayat Pelatih
  	 <a href="{{url("pelatih/riwayat/$pelatih->id/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$pelatih->nama_cab." - ".$pelatih->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$pelatih_riw->count() }} Data Ditemukan)
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
							@foreach($pelatih_riw as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("pelatih/riwayat/$a->id_riwayat_pelatih/edit")}}">{{$a->nama_riwayat_pelatih}}</a></td>
									
									<td>{{$a->tahun}}</td>
									
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $pelatih_riw->render() !!}
				</div>
	</div>


@endsection