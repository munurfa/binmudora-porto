@extends('excel.index')
@section('main')

     <table class="table-bordered" border="1px">

  <thead >
              <tr class="warning">
               <th valign="middle" height="30px">No</th> 
                <th  width="20px" valign="middle" height="30px">Nama</th>
                <th width="20px" valign="middle" height="30px">Tempat / Tgl Lahir</th>
                <th width="20px" valign="middle" height="30px">Jenis Kelamin</th>
                <th width="30px" valign="middle" height="30px">Alamat</th>
                <th width="20px" valign="middle" height="30px">Posisi</th>
                <th width="20px" valign="middle" height="30px">Cabang OR</th>
                
               
              </tr>
            </thead>
            <tbody >
               @foreach($kon_st as $a)
              <tr >
                
             <td valign="middle">{{$no++}}</td> 
                  
                  
                  <td valign="middle">{{$a->nama_kontingen}}</td>
                  <td valign="middle">{{$a->tmp_lahir." / "."$a->tgl_lahir"}}</td>
               <td valign="middle">{{$a->jenis_kel}}</td>
                  <td valign="middle">{{$a->alamat}}</td>
                  <td valign="middle">{{$a->jabatan}}</td>
                  <td valign="middle">{{$a->cabang}}</td>
             </tr>
              @endforeach
            </tbody>

@endsection