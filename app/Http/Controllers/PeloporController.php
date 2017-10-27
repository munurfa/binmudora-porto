<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class PeloporController extends Controller
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
        $pelopor = DB::table('pelopor');
       
        
        $data['pelopor_all'] = $pelopor;
        $data['pelopor'] = $pelopor->paginate(10);
               
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('pelopor.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $pelopor = DB::table('pelopor')->where('pelopor.nama','like',"%".$cari."%");

        $data['pelopor_all'] = $pelopor;
       $data['pelopor'] = $pelopor->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('pelopor.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pelopor.tambah');
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
         $pelopor = DB::table('pelopor')->insertGetId([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            
            ]);
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $pelopor;
          $peloporfoto = DB::table('pelopor')->where("pelopor.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $peloporfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/pelopor/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('pelopor');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['pelopor'] = DB::table('pelopor')->where("pelopor.id","=",$id)->first();
        return view('pelopor.edit',$data);
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
        $peloporfoto = DB::table('pelopor')->where("pelopor.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/pelopor/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/pelopor',$foto);

        }else{
            
            $foto = $peloporfoto->foto;
        }
        $pelopor = DB::table('pelopor')->where("pelopor.id","=",$id);
        $pelopor->update([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            'foto' => $foto
            ]);
        return redirect('pelopor');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $peloporfoto = DB::table('pelopor')->where("pelopor.id","=",$id)->first();
        $foto = $peloporfoto->foto;
         $file_path = public_path("foto/pelopor/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $pelopor = DB::table('pelopor')->where("pelopor.id","=",$id);
        $pelopor->delete();

        
        return redirect('pelopor');
    }
}
