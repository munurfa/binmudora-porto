<?php

namespace App\Http\Controllers;

use App\Sarpub;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;


class SarprasPublicController extends Controller
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
       
       $sarpub = DB::table('sarpras_public');

        $data['sarpub'] = $sarpub->paginate(10);
        $data['sarpub_all'] = $sarpub;
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('sarpub.index',$data);
    }
    public function cari(Request $r,$cari)
    {
       
       $sarpub = DB::table('sarpras_public')->where('sarpras_public.nama','like',"%".$cari."%");

       $data['sarpub'] = $sarpub->paginate(10);
      $data['sarpub_all'] = $sarpub;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('sarpub.cari',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sarpub.tambah');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $r)
    {
        
        $sarpub = Sarpub::create([
           'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
        ]);
     

        return redirect('sarana/public');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['sarpub'] = Sarpub::find($id);
        return view('sarpub.edit',$data);
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
        
        $sarpub = Sarpub::find($id);
     
        
        $sarpub->update([
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
            
            ]);
         
          
        return redirect('sarana/public');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sarpub = Sarpub::find($id);
        $sarpub->delete();
        return redirect('sarana/public');
    }
}
