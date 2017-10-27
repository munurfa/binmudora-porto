@extends('report.index')
@section('title','Report Atlit')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT KONTINGEN</h3>

<h3>{{$kon->nama}}</h3> 

<p class="text-right">
<a class="btn btn-danger btn-lg" href="{{url("report/event/$kon->id/kontingen/printex")}}" target="_blank">Export Excel</a> 

</p>

</div>

     <table class="table table-responsive table-hover table-bordered" border="1px">

  <thead >
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="200px">Tempat / Tgl Lahir</th>
                <th width="100px">Jenis Kelamin</th>
                <th width="300px">Alamat</th>
                <th width="100px">Posisi</th>
                <th width="200px">Cabang OR</th>
                
              </tr>
            </thead>
            <tbody >

             @foreach($kon_st as $a)
              <tr >
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama_kontingen}}</td>
                  <td>{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
                  <td>{{$a->jenis_kel}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->jabatan}}</td>
                  <td>{{$a->cabang}}</td>
                  
              @endforeach    
              </tr>
             

            </tbody>  </table>
@endsection 