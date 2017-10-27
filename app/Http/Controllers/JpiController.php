<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class JpiController extends Controller
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
        $jpi = DB::table('jpi');
       
        
        $data['jpi_all'] = $jpi;
        $data['jpi'] = $jpi->paginate(10);
        
       
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('jpi.index',$data);
    }
    public function cari(Request $r,$cari)
    {
       
       $jpi = DB::table('jpi')->where('jpi.nama','like',"%".$cari."%");

        $data['jpi_all'] = $jpi;
       $data['jpi'] = $jpi->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('jpi.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('jpi.tambah');
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
         $jpi = DB::table('jpi')->insertGetId([
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
            $lastId = $jpi;
            $jpifoto = DB::table('jpi')->where("jpi.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $jpifoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/jpi/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('jpi');
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
        $data['jpi'] = DB::table('jpi')->where("jpi.id","=",$id)->first();
        return view('jpi.edit',$data);
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
        $jpifoto = DB::table('jpi')->where("jpi.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/jpi/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/jpi',$foto);

        }else{
            
            $foto = $jpifoto->foto;
        }
        $jpi = DB::table('jpi')->where("jpi.id","=",$id);
        $jpi->update([
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
        return redirect('jpi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $jpifoto = DB::table('jpi')->where("jpi.id","=",$id)->first();
        $foto = $jpifoto->foto;
         $file_path = public_path("foto/jpi/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $jpi = DB::table('jpi')->where("jpi.id","=",$id);
        $jpi->delete();

        
        return redirect('jpi');
    }
}
