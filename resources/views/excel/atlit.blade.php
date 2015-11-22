@extends('excel.index')
@section('main')

     <table class="table-bordered" border="1px">

  <thead >
              <tr class="warning">
               <th valign="middle" height="30px">No</th> 
                <th  width="20px" valign="middle" height="30px">Nama</th>
                <th width="20px" valign="middle" height="30px">Tempat / Tgl Lahir</th>
                
                <th width="30px" valign="middle" height="30px">Alamat</th>
                <th width="20px" valign="middle" height="30px">Cabang OR</th>
                <th width="20px" valign="middle" height="30px">Spesifikasi</th>
                <th width="20px" valign="middle" height="30px">Prestasi</th>
              </tr>
            </thead>
            <tbody >
               @foreach($atlit_pres as $a)
              <tr >
                
             <td valign="middle">{{$no++}}</td> 
                  
                  
                  <td valign="middle">{{$a->nama}}</td>
                  <td valign="middle">{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
               
                  <td valign="middle">{{$a->alamat}}</td>
                  <td valign="middle">{{$a->nama_cab}}</td>
                  <td valign="middle">{{$a->spesialis}}</td>
                   <?php $prestasi = DB::select(DB::raw("select * from `event_atlit` where `id_atlit` = ".$a->id))  ;
                  
                  ?>
                   <td height="40px">@foreach($prestasi as $b)
                    {{$b->tahun}}<br>
                  Tingkat: {{$b->tingkat}}<br>
                     Kelas : {{$b->kelas}}<br>
                      Peringkat : {{$b->peringkat}}<br>
                      Medali : {{$b->medali}}<br>

                    <br>
                    @endforeach
                  </td> 
                </tr>
              @endforeach
            </tbody>

@endsection