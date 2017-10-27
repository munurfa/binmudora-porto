<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use File;
use Validator;
use DB;

class PaskibController extends Controller
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
        $paskib = DB::table('paskib');
       
        
        $data['paskib_all'] = $paskib;
        $data['paskib'] = $paskib->paginate(10);
        
       
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('paskib.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $paskib = DB::table('paskib')->where('paskib.nama','like',"%".$cari."%");

        $data['paskib_all'] = $paskib;
       $data['paskib'] = $paskib->paginate(10);
      
        
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('paskib.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('paskib.tambah');
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
         $paskib = DB::table('paskib')->insertGetId([
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
            $lastId = $paskib;
          $paskibfoto = DB::table('paskib')->where("paskib.id","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $paskibfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/paskib/',$foto);

        }else{
            
            $foto = "";
        }
         return redirect('paskibraka');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['paskib'] = DB::table('paskib')->where("paskib.id","=",$id)->first();
        return view('paskib.edit',$data);
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
        $paskibfoto = DB::table('paskib')->where("paskib.id","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/paskib/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/paskib',$foto);

        }else{
            
            $foto = $paskibfoto->foto;
        }
        $paskib = DB::table('paskib')->where("paskib.id","=",$id);
        $paskib->update([
            'nama'=> $r->nama,
            'tahun'=> $r->tahun, 
            'alamat' => $r->alamat,
            'tgl_lahir' => $r->tgl_lahir,
            'tmp_lahir' => $r->tmp_lahir,
            'jenis_kel'=> $r->jenis_kel,
            'kota_kab'=> $r->kota_kab,
            'foto' => $foto
            ]);
        return redirect('paskibraka');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $paskibfoto = DB::table('paskib')->where("paskib.id","=",$id)->first();
        $foto = $paskibfoto->foto;
         $file_path = public_path("foto/paskib/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $paskib = DB::table('paskib')->where("paskib.id","=",$id);
        $paskib->delete();

        
        return redirect('paskibraka');
    }
}
