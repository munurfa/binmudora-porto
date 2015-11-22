@extends('report.index')
@section('title','Report Sarjana Penggerak Pembangunan')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT SARJANA PENGGERAK PEMBANGUNAN</h3>
<p class="text-right">    
<a class="btn btn-danger btn-lg" href="{{url("report/kepemudaan/sp")}}" target="_blank">Export Excel</a> 
</p>
</div>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
<thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="150px">Nama</th>
                <th width="150px">Alamat</th>
                <th >Kab / Kota</th>
                <th >Angkatan</th>

                <th >Sumber Dana</th>

                <th width="150px">Lokasi Penerapan</th>
              </tr>
            </thead>
            <tbody>
              @foreach($sar as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->angkatan}}</td>
                  <td>{{$a->sumber_dana}}</td>
                  <td>{{$a->lokasi}}</td>
                  
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection