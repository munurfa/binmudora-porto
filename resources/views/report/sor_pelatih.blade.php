@extends('report.index')
@section('title','Report Pelatih')
@section('main')
<h3 class="text-center">REPORT PELATIH</h3>

		 <table class="table table-responsive table-hover table-bordered" border="1px">
  <thead>
              <tr class="warning">
                <th width="10px">No</th>
                <th width="150px">Nama</th>
                <th >Tempat / Tgl Lahir</th>
                <th >Kab / Kota</th>
                <th >Alamat</th>
                <th>Cabang OR</th>
              </tr>
            </thead>
            <tbody>
              @foreach($grupby as $a)
              <tr>
                
                  <td>{{$no++}}</td>
                  
                  
                  <td>{{$a->nama}}</td>
                  <td>{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
                  <td>{{$a->kota_kab}}</td>
                  <td>{{$a->alamat}}</td>
                  <td>{{$a->nama_cab}}</td>
                 {{--  <td>@foreach($pelatih_se as $a)
                    <b>{{$a->tahun}}</b><br>
                    {{$a->nama_serti_pelatih}}<br>

                    <br>
                    @endforeach
                  </td> --}}
                  
                
              </tr>
              @endforeach

            </tbody>
  </table>
@endsection