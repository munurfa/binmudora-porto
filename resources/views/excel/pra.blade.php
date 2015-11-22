@extends('excel.index')
@section('main')

     <table class="table-bordered" border="1px">

  <thead >
              <tr class="warning">
               <th  valign="middle" >No</th> 
                <th  width="30"  valign="middle" >Nama</th>
                <th width="20" valign="middle" >Kab / Kota</th>
                <th width="60" valign="middle" >Alamat</th>
                 <th width="10px" valign="middle">Siaga L</th>

                <th width="10px" valign="middle" height="50px">Siaga P</th>

                <th width="10px" valign="middle">Penggalang L</th>
                <th width="10px" valign="middle">Penggalang P</th>
                <th width="10px" valign="middle">Penegak L</th>
                <th width="10px" valign="middle">Penegak P</th>
                <th width="10px" valign="middle">Pandega L</th>
                <th width="10px" valign="middle">Pandega P</th>
                <th width="10px" valign="middle">Luar Biasa L</th>
                <th width="10px" valign="middle">Luar Biasa P</th>
              </tr>
            </thead>
            <tbody >
               @foreach($pra as $a)
              <tr >
                
             <td valign="middle">{{$no++}}</td> 
                  <td valign="middle" height="40px">{{$a->nama}}</td>
                  <td valign="middle">{{$a->kota_kab}}</td>
                  <td valign="middle">{{$a->alamat}}</td>
                     <td valign="middle">{{$a->siaga_l}}</td>
                  <td valign="middle">{{$a->siaga_p}}</td>
                  <td valign="middle">{{$a->penggalang_l}}</td>
                  <td valign="middle">{{$a->penggalang_p}}</td>
                  <td valign="middle">{{$a->penegak_l}}</td>
                  <td valign="middle">{{$a->penegak_p}}</td>
                  <td valign="middle">{{$a->pandega_l}}</td>
                  <td valign="middle">{{$a->pandega_p}}</td>
                  <td valign="middle">{{$a->lb_l}}</td>
                  <td valign="middle">{{$a->lb_p}}</td>
                 
                </tr>
           @endforeach
            </tbody>
</table>
@endsection