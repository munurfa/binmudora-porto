<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class PpanController extends Controller
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
        $ppan = DB::table('ppan');
       
        
        $data['ppan_all'] = $ppan;
        $data['ppan'] = $ppan->paginate(10);
        
       
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('ppan.index',$data);
    }
    public function cari(Request $r,$cari)
    {
       
       $ppan = DB::table('ppan')->where('ppan.nama','like',"%".$cari."%");

        $data['ppan_all'] = $ppan;
       $data['ppan'] = $ppan->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('ppan.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('ppan.tambah');
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
         $ppan = DB::table('ppan')->insertGetId([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
            'tinggi' => $r->tinggi,
            'berat' => $r->berat,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            'negara'=> $r->negara,
            ]);
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $ppan;
            $ppanfoto = DB::table('ppan')->where("ppan.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $ppanfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/ppan/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('ppan');
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
        $data['ppan'] = DB::table('ppan')->where("ppan.id","=",$id)->first();
        return view('ppan.edit',$data);
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
        $ppanfoto = DB::table('ppan')->where("ppan.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/ppan/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/ppan',$foto);

        }else{
            
            $foto = $ppanfoto->foto;
        }
        $ppan = DB::table('ppan')->where("ppan.id","=",$id);
        $ppan->update([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
             'tinggi' => $r->tinggi,
            'berat' => $r->berat,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            'negara'=> $r->negara,
            'foto' => $foto
            ]);
        return redirect('ppan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ppanfoto = DB::table('ppan')->where("ppan.id","=",$id)->first();
        $foto = $ppanfoto->foto;
         $file_path = public_path("foto/ppan/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $ppan = DB::table('ppan')->where("ppan.id","=",$id);
        $ppan->delete();

        
        return redirect('ppan');
    }
}
