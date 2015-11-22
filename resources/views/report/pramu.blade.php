@extends('report.index')
@section('title','Report Kepramukaan')
@section('main')
<div style="padding: 10px">
<h3 class="text-center">REPORT KEPRAMUKAAN</h3>
<p class="text-right">    
<a class="btn btn-danger btn-lg" href="{{url("report/kepemudaan/pra")}}" target="_blank">Export Excel</a> 
</p>
</div>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
<thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="300px">Nama</th>
                <th width="300px">Alamat</th>
                <th width="150px">Kab / Kota</th>
                <th >Siaga L</th>

                <th >Siaga P</th>

                <th >Penggalang L</th>
                <th >Penggalang P</th>
                <th >Penegak L</th>
                <th >Penegak P</th>
                <th >Pandega L</th>
                <th >Pandega P</th>
                <th >Luar Biasa L</th>
                <th >Luar Biasa P</th>
              </tr>
            </thead>
            <tbody>
              @foreach($pra as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->siaga_l}}</td>
                  <td>{{$a->siaga_p}}</td>
                  <td>{{$a->penggalang_l}}</td>
                  <td>{{$a->penggalang_p}}</td>
                  <td>{{$a->penegak_l}}</td>
                  <td>{{$a->penegak_p}}</td>
                  <td>{{$a->pandega_l}}</td>
                  <td>{{$a->pandega_p}}</td>
                  <td>{{$a->lb_l}}</td>
                  <td>{{$a->lb_p}}</td>
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection