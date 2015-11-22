@extends('report.index')
@section('title','Report Sarana Olah Raga')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT OLAH RAGA</h3>
<p class="text-right">    
<a class="btn btn-danger btn-lg" href="{{url("report/sarana/sarpras_ors")}}" target="_blank">Export Excel</a> 
</p>
</div>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
  <thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="200px">Alamat</th>
                <th width="100px">Kab / Kota</th>
                <th width="100px">kondisi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($sor as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->kondisi}}</td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection