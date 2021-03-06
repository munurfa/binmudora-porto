@extends('report.index')
@section('title','Report Wasit')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT WASIT</h3>
@if($cab != "000")
    <h3>Cabang : {{$cabang->nama_cab}}</h3> 
  @endif

<p class="text-right">
@if($cab != "000")
    
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/wasit/$cabang->id_cabang")}}" target="_blank">Export Excel</a> 
-@else
  
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/wasit/000")}}" target="_blank">Export Excel</a>
  @endif
</p>
</div>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
  <thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="200px">Tempat / Tgl Lahir</th>
                <th width="200px">Kab / Kota</th>
                <th width="300px">Alamat</th>
                <th>Cabang OR</th>
                <th width="200px">Sertifikasi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($wasit_se as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->nama_cab}}</td>
                  <?php $serti = DB::select(DB::raw("select * from `serti_wasit` where `id_wasit` = ".$a->id))  ;
                  
                  ?>
                 <td>@foreach($serti as $a)
                    <b>{{$a->tahun}}</b><br>
                    {{$a->nama_serti_wasit}}<br>

                    <br>
                    @endforeach
                  </td>
                  
                
              </tr>
              @endforeach

            </tbody>  
            </table>
@endsection