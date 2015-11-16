@extends('report.index')
@section('title','Report Pelatih')
@section('main')
<h3 class="text-center">REPORT PELATIH</h3>
@if($cab != "000")
    <h3>Cabang : {{$cabang->nama_cab}}</h3> 
  @endif

<p class="text-right">
@if($cab != "000")
    
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/pelatih/$cabang->id_cabang")}}" target="_blank">Export Excel</a> 
-@else
  
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/pelatih/000")}}" target="_blank">Export Excel</a>
  @endif
</p>

		 <table class="table table-responsive table-hover table-bordered" border="1px">
  <thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th >Tempat / Tgl Lahir</th>
                <th >Kab / Kota</th>
                <th width="300px">Alamat</th>
                <th>Cabang OR</th>
                <th width="200px">Sertifikasi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($pelatih_se as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->nama_cab}}</td>
                  <?php $sertifi = DB::select(DB::raw("select * from `serti_pelatih` where `id_pelatih` = ".$a->id))  ;
                  
                  ?>
                 <td>@foreach($sertifi as $s)
                    <b>{{$s->tahun}}</b><br>
                    {{$s->nama_serti_pelatih}}<br>

                    <br>
                    @endforeach
                  </td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection