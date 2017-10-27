<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class KpnController extends Controller
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
        $kpn = DB::table('kpn');
       
        
        $data['kpn_all'] = $kpn;
        $data['kpn'] = $kpn->paginate(10);
        
       
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('kpn.index',$data);
    }
    public function cari(Request $r,$cari)
    {
       
       $kpn = DB::table('kpn')->where('kpn.nama','like',"%".$cari."%");

        $data['kpn_all'] = $kpn;
       $data['kpn'] = $kpn->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('kpn.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kpn.tambah');
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
            'tmp_lahir' => 'required',
            'foto'=> 'image'
            ]);
         $kpn = DB::table('kpn')->insertGetId([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
            'tinggi' => $r->tinggi,
            'berat' => $r->berat,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            
            ]);
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $kpn;
            $kpnfoto = DB::table('kpn')->where("kpn.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $kpnfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/kpn/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('kpn');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['kpn'] = DB::table('kpn')->where("kpn.id","=",$id)->first();
        return view('kpn.edit',$data);
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
            'tmp_lahir' => 'required',
            'foto'=> 'image'
            ]);
        $kpnfoto = DB::table('kpn')->where("kpn.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/kpn/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/kpn',$foto);

        }else{
            
            $foto = $kpnfoto->foto;
        }
        $kpn = DB::table('kpn')->where("kpn.id","=",$id);
        $kpn->update([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
             'tinggi' => $r->tinggi,
            'berat' => $r->berat,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            'foto' => $foto
            ]);
        return redirect('kpn');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kpnfoto = DB::table('kpn')->where("kpn.id","=",$id)->first();
        $foto = $kpnfoto->foto;
         $file_path = public_path("foto/kpn/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $kpn = DB::table('kpn')->where("kpn.id","=",$id);
        $kpn->delete();

        
        return redirect('kpn');
    }
}
