<?php

namespace App\Http\Controllers;

use App\Sarmud;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class SarprasMudaController extends Controller
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
       
       $sarmud = DB::table('sarpras_muda');

        $data['sarmud'] = $sarmud->paginate(10);
      $data['sarmud_all'] = $sarmud;
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('sarmud.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $sarmud = DB::table('sarpras_muda')->where('sarpras_muda.nama','like',"%".$cari."%");

       $data['sarmud'] = $sarmud->paginate(10);
      $data['sarmud_all'] = $sarmud;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('sarmud.cari',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sarmud.tambah');
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
            'nama'=>'required',]);
        $sarmud = Sarmud::create([
           'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
        ]);
     

        return redirect('sarana/kepemudaan');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['sarmud'] = Sarmud::find($id);
        return view('sarmud.edit',$data);
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
            'nama'=>'required',]);
        $sarmud = Sarmud::find($id);
     
        
        $sarmud->update([
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
            
            ]);
         
          
        return redirect('sarana/kepemudaan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sarmud = Sarmud::find($id);
        $sarmud->delete();
        return redirect('sarana/kepemudaan');
    }
}
