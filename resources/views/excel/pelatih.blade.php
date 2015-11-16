@extends('excel.index')
@section('main')

     <table class="table-bordered" border="1px">

  <thead >
              <tr class="warning">
               <th valign="middle" height="30px">No</th> 
                <th  width="20px" valign="middle" height="30px">Nama</th>
                <th width="20px" valign="middle" height="30px">Tempat / Tgl Lahir</th>
                <th width="20px" valign="middle" height="30px">Kab / Kota</th>
                <th width="30px" valign="middle" height="30px">Alamat</th>
                <th width="20px" valign="middle" height="30px">Cabang OR</th>
                <th width="20px" valign="middle" height="30px">Sertifikasi</th>
              </tr>
            </thead>
            <tbody >
               @foreach($pelatih_se as $a)
              <tr >
                
             <td valign="middle">{{$no++}}</td> 
                  <td valign="middle">{{$a->nama}}</td>
                  <td valign="middle">{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
                <td valign="middle">{{$a->kota_kab}}</td>
                  <td valign="middle">{{$a->alamat}}</td>
                  <td valign="middle">{{$a->nama_cab}}</td>
                   <?php $sertifi = DB::select(DB::raw("select * from `serti_pelatih` where `id_pelatih` = ".$a->id))  ;
                  
                  ?>
                   <td height="40px">@foreach($sertifi as $b)
                    {{$b->tahun}}<br>
                 {{$b->nama_serti_pelatih}}<br>
                     
                    @endforeach
                  </td> 
                </tr>
              @endforeach
            </tbody>

@endsection