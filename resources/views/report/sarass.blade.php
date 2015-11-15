@extends('report.index')
@section('title','Report Sarana aSsET')
@section('main')
<h1 class="text-center">REPORT ASSET</h1>
		 <table class="table table-responsive table-hover table-bordered" border="1px" border="1px">
  <thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="200px">Nama</th>
                <th width="100px">tahun</th>
                <th width="100px">kondisi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($sarass as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->tahun}}</td>
                  <td>{{$a->kondisi}}</td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection