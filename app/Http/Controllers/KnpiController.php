<?php

namespace App\Http\Controllers;


use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class KnpiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $r)
    {
       
       $knpi = DB::table('knpi')->paginate(10);

        $data['knpi'] = $knpi;

        // $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('knpi.index',$data);
    }
    //  public function cari(Request $r)
    // {
       
    //    $koni = DB::table('konis')->where('konis.nama','like',"%".$r->keyword."%")->paginate(10);

    //    $data['koni'] = $koni;
      
    //     $data['keyword'] = $r->keyword;
    //     $data['no'] = 1;
    //    return view('koni.index',$data);
    // }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('knpi.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $r)
    {
        $this->validate($r,[
            'nama'=>'required']);
        DB::table('knpi')->insert([
            'tingkat' => $r->tingkat,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            
            
        ]);
     

        return redirect('knpi');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['knpi'] = DB::table('knpi')->where('id_knpi',$id)->first();
        return view('knpi.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $r, $id)
    {
        $this->validate($r,[
            'nama'=>'required']);
        $knpi = DB::table('knpi')->where('id_knpi',$id);
     
        
        $knpi->update([
            'tingkat' => $r->tingkat,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            
            ]);
         
          
        return redirect('knpi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $koni = DB::table('knpi')->where('id_knpi',$id);
        $koni->delete();
        return redirect('knpi');
    }

      public function struktur($id)
    {
         $knpi_st = DB::table('knpi_struktur')->where('knpi_struktur.id_knpi','=',$id)
                        ->paginate(10);

        $knpi = DB::table('knpi')->where('knpi.id_knpi','=',$id)->first();

        $data['knpi_st'] = $knpi_st;
        $data['knpi'] = $knpi;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('knpi.struktur',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        return view('knpi.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
         $this->validate($r,[
            'nama_anggota'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        DB::table('knpi_struktur')->insert([
            'id_knpi'=> $r->id_knpi,
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 

            ]);
        
        return redirect('knpi/struktur/'.$r->id_knpi);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['knpi_st'] = DB::table('knpi_struktur')->where('id_anggota','=',$id)->first();
      
        return view('knpi.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
     $this->validate($r,[
            'nama_anggota'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        $ev = DB::table('knpi_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->update([
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 
            ]);
        
        return redirect('knpi/struktur/'.$id->id_knpi);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('knpi_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('knpi/struktur/'.$id->id_knpi);
    }

}
