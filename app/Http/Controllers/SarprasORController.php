<?php

namespace App\Http\Controllers;

use App\SOR;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class SarprasORController extends Controller
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
       
       $sor = DB::table('sarpras_ors')->paginate(10);

        $data['sor'] = $sor;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('sor.index',$data);
    }
     public function cari(Request $r)
    {
       
       $sor = DB::table('sarpras_ors')->where('sarpras_ors.nama','like',"%".$r->keyword."%")->paginate(10);

       $data['sor'] = $sor;
      
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('sor.index',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sor.tambah');
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
        $sor = SOR::create([
           'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
        ]);
     

        return redirect('sarana/keolahragaan');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['sor'] = SOR::find($id);
        return view('sor.edit',$data);
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
        $sor = SOR::find($id);
     
        
        $sor->update([
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
             'kondisi' => $r->kondisi,
              'kategori' => $r->kategori,
             'status_pemilik' => $r->status_pemilik,
              'kapasitas' => $r->kapasitas,
            
            ]);
         
          
        return redirect('sarana/keolahragaan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sor = SOR::find($id);
        $sor->delete();
        return redirect('sarana/keolahragaan');
    }
}
