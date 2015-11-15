@extends('layouts.dash.index')
@section('title','Struktur OKP')
@section('main')

	<div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Struktur OKP
  	 <a href="{{url("okp/struktur/$okp->id_okp/create")}}" class="btn btn-danger">Tambah Data</a></h3>
  	 <h3>{{$okp->nama}}</h3>
 




  	 <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">

				<div class="panel-body no-padding">
				
			
  	 <h5 style="color: black">
					
					( {{$okp_st->count() }} Data Ditemukan)
				</h5>
					<table class="table table-striped table-responsive table-bordered text-center">
						<thead>
							<tr class="warning">
								<th width="10px">No</th>
								<th>Nama</th>
								<th width="300px">Tempat,Tanggal Lahir</th>
								<th width="100px">Jabatan</th>
							</tr>
						</thead>
						<tbody>
							@foreach($okp_st as $a)
							<tr>
								
									<td>{{$no++}}</td>
									
									<td><a href="{{url("okp/struktur/$a->id_anggota/edit")}}">{{$a->nama}}</a></td>
									<td>{{$a->tmp_lahir.", ".$a->tgl_lahir}}</td>
									<td>{{$a->jabatan}}</td>
								
							</tr>
							@endforeach

						</tbody>
					</table>
					{!! $okp_st->render() !!}
				</div>
	</div>



@endsection