@extends('report.index')
@section('title','Report Atlit')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT ATLIT</h3>
@if($cab != "000")
    <h3>Cabang : {{$cabang->nama_cab}}</h3> 
  @endif

<p class="text-right">
@if($cab != "000")
    
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/atlit/$cabang->id_cabang")}}" target="_blank">Export Excel</a> 
-@else
  
<a class="btn btn-danger btn-lg" href="{{url("report/olahraga/atlit/000")}}" target="_blank">Export Excel</a>
  @endif
</p>

</div>

     <table class="table table-responsive table-hover table-bordered" border="1px">

  <thead >
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="200px">Tempat / Tgl Lahir</th>
                
                <th width="300px">Alamat</th>
                <th width="200px">Cabang OR</th>
                <th width="100px">Spesifikasi</th>
                <th>Prestasi</th>
              </tr>
            </thead>
            <tbody >

             @foreach($atlit_pres as $a)
              <tr >
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
               
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->nama_cab}}</td>
                  <td>{{$a->spesialis}}</td>
                  <?php $prestasi = DB::select(DB::raw("select * from `event_atlit` where `id_atlit` = ".$a->id))  ;
                  
                  ?>
                   <td>@foreach($prestasi as $b)
                    <b>{{$b->tahun}}</b><br>
                  Tingkat: {{$b->tingkat}}<br>
                     Kelas : {{$b->kelas}}<br>
                      Peringkat : {{$b->peringkat}}<br>
                      Medali : {{$b->medali}}<br>

                    <br>
                    @endforeach
                  </td> 
                  
              @endforeach    
              </tr>
             

            </tbody>  </table>
@endsection 