<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class BaktiController extends Controller
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
        $bpap = DB::table('bpap');
       
        
        $data['bpap_all'] = $bpap;
        $data['bpap'] = $bpap->paginate(10);
        
       
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('bpap.index',$data);
    }
    public function cari(Request $r,$cari)
    {
       
       $bpap = DB::table('bpap')->where('bpap.nama','like',"%".$cari."%");

        $data['bpap_all'] = $bpap;
       $data['bpap'] = $bpap->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('bpap.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('bpap.tambah');
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
         $bpap = DB::table('bpap')->insertGetId([
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
            $lastId = $bpap;
            $bpapfoto = DB::table('bpap')->where("bpap.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $bpapfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/bpap/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('bpap');
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
        $data['bpap'] = DB::table('bpap')->where("bpap.id","=",$id)->first();
        return view('bpap.edit',$data);
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
        $bpapfoto = DB::table('bpap')->where("bpap.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/bpap/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/bpap',$foto);

        }else{
            
            $foto = $bpapfoto->foto;
        }
        $bpap = DB::table('bpap')->where("bpap.id","=",$id);
        $bpap->update([
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
        return redirect('bpap');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $bpapfoto = DB::table('bpap')->where("bpap.id","=",$id)->first();
        $foto = $bpapfoto->foto;
         $file_path = public_path("foto/bpap/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $bpap = DB::table('bpap')->where("bpap.id","=",$id);
        $bpap->delete();

        
        return redirect('bpap');
    }
}
