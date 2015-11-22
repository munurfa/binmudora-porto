@extends('report.index')
@section('title','Report Sarana aSsET')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT ASSET</h3>
<p class="text-right">    
<a class="btn btn-danger btn-lg" href="{{url("report/sarana/sarpras_asset")}}" target="_blank">Export Excel</a> 
</p>
</div>
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