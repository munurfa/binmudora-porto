<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class OkpController extends Controller
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
    public function index()
    {
         $okp = DB::table('okp')->paginate(10);

        $data['okp'] = $okp;
        $data['no'] = 1;
       return view('okp.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('okp.tambah');
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
            'nama'=>'required',
            'ketua'=>'required',]);
        DB::table('okp')->insert([

            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'ketua' => $r->ketua,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            'bidang' => $r->bidang,
            'tgl_berdiri' => $r->tgl_berdiri,
            'dasar' => $r->dasar,
            'masa' => $r->masa,
            'jenis' => $r->jenis, 
            'no_reg' => $r->no_reg,


            ]);
         return redirect('okp');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['okp'] = DB::table('okp')->where('id_okp','=',$id)->first();
        return view('okp.edit',$data);
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
            'nama'=>'required',
            'ketua'=>'required',]);
         DB::table('okp')->where('id_okp','=',$id)
         ->update([

            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'ketua' => $r->ketua,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            'bidang' => $r->bidang,
            'tgl_berdiri' => $r->tgl_berdiri,
            'dasar' => $r->dasar,
            'masa' => $r->masa,
            'jenis' => $r->jenis, 
            'no_reg' => $r->no_reg,


            ]);
        return redirect('okp');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         DB::table('okp')->where('id_okp','=',$id)
         ->delete();
        return redirect('okp');
    }
          public function struktur($id)
    {
         $okp_st = DB::table('okp_struktur')->where('okp_struktur.id_okp','=',$id)
                        ->paginate(10);

        $okp = DB::table('okp')->where('okp.id_okp','=',$id)->first();

        $data['okp_st'] = $okp_st;
        $data['okp'] = $okp;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('okp.struktur',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        return view('okp.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
            $this->validate($r,[
            'nama'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        DB::table('okp_struktur')->insert([
            'id_okp'=> $r->id_okp,
            'nama'=> $r->nama,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 

            ]);
        
        return redirect('okp/struktur/'.$r->id_okp);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['okp_st'] = DB::table('okp_struktur')->where('id_anggota','=',$id)->first();
      
        return view('okp.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
         $this->validate($r,[
            'nama'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        $ev = DB::table('okp_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->update([
            'nama'=> $r->nama,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 
            ]);
        
        return redirect('okp/struktur/'.$id->id_okp);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('okp_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('okp/struktur/'.$id->id_okp);
    }
}
