@extends('excel.index')
@section('main')

     <table class="table-bordered" border="1px">

  <thead >
              <tr class="warning">
               <th valign="middle" height="30px">No</th> 
                <th  width="20px" valign="middle" height="30px">Nama</th>
                <th width="20px" valign="middle" height="30px">Kab / Kota</th>
                <th width="30px" valign="middle" height="30px">Alamat</th>
                <th width="20px" valign="middle" height="30px">Kondisi</th>
              </tr>
            </thead>
            <tbody >
               @foreach($sarpub as $a)
              <tr >
                
             <td valign="middle">{{$no++}}</td> 
                  <td valign="middle" height="40px">{{$a->nama}}</td>
                  <td valign="middle">{{$a->kota_kab}}</td>
                  <td valign="middle">{{$a->alamat}}</td>
                  <td valign="middle">{{$a->kondisi}}</td>
                 
                </tr>
           @endforeach
            </tbody>
</table>
@endsection