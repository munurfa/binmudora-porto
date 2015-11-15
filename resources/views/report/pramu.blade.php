@extends('report.index')
@section('title','Report Kepramukaan')
@section('main')
<h1 class="text-center">REPORT KEPRAMUKAAN</h1>
		 <table class="table table-responsive table-hover table-bordered" border="1px">
<thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th>Nama</th>
                <th >Alamat</th>
                <th >Kab / Kota</th>
                <th width="30px">Siaga L</th>

                <th width="30px">Siaga P</th>

                <th width="30px">Penggalang L</th>
                <th width="30px">Penggalang P</th>
                <th width="30px">Penegak L</th>
                <th width="30px">Penegak P</th>
                <th width="30px">Pandega L</th>
                <th width="30px">Pandega P</th>
                <th width="30px">Luar Biasa L</th>
                <th width="30px">Luar Biasa P</th>
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