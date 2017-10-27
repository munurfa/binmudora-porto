<?php

namespace App\Http\Controllers;

use App\Sarass;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class SarprasAssetController extends Controller
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
       
       $sarass = DB::table('sarpras_asset');

        $data['sarass'] = $sarass->paginate(10);
      $data['sarass_all'] = $sarass;
        $data['keyword'] = "";
       
        $data['no'] = 1;
       return view('sarass.index',$data);
    }
   public function cari(Request $r,$cari)
    {
       
       $sarass = DB::table('sarpras_asset')->where('sarpras_asset.nama','like',"%".$cari."%");

       $data['sarass'] = $sarass->paginate(10);
      $data['sarass_all'] = $sarass;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('sarass.cari',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sarass.tambah');
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
        $sarass = Sarass::create([
           'nama' => $r->nama,
            'tahun' => $r->tahun,
           
             'kondisi' => $r->kondisi,
          
        ]);
     

        return redirect('sarana/asset');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['sarass'] = Sarass::find($id);
        return view('sarass.edit',$data);
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
        $sarass = Sarass::find($id);
     
        
        $sarass->update([
            'nama' => $r->nama,
            'tahun' => $r->tahun,
            'kondisi' => $r->kondisi,
              
            ]);
         
          
        return redirect('sarana/asset');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sarass = Sarass::find($id);
        $sarass->delete();
        return redirect('sarana/asset');
    }
}
