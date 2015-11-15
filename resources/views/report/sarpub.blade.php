@extends('report.index')
@section('title','Report Sarana Area Publik')
@section('main')
<h1 class="text-center">REPORT AREA PUBLIK</h1>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
<thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="200px">Alamat</th>
                <th width="150px">Kab / Kota</th>
                <th width="100px">kondisi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($sarpub as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}></td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->kondisi}}</td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection