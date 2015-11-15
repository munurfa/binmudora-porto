@extends('report.index')
@section('title','Report Organisasi Kepemudaan')
@section('main')
<h1 class="text-center">REPORT ORGANISASI KEPEMUDAAN</h1>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
<thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th >Alamat</th>
                <th >Kab / Kota</th>
                <th>Ketua</th>
                <th>Bidang</th>
              </tr>
            </thead>
            <tbody>
              @foreach($okp as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->ketua}}</td>
                  <td>{{$a->bidang}}</td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection