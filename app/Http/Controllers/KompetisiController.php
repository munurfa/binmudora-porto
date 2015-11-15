<?php

namespace App\Http\Controllers;

use App\Kompetisi;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class KompetisiController extends Controller
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
       
       $kom = DB::table('kompetisi')->paginate(10);

        $data['kom'] = $kom;

        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('kom.index',$data);
    }
     public function cari(Request $r)
    {
       
       $kom = DB::table('kompetisi')->where('kompetisi.nama','like',"%".$r->keyword."%")->paginate(10);

       $data['kom'] = $kom;
      
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('kom.index',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kom.tambah');
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
        $kom = Kompetisi::create([
            
            'nama' => $r->nama,
            'tgl_mulai' => $r->tgl_mulai,
            'tgl_akhir' => $r->tgl_akhir,
            'level' => $r->level,
            
            
        ]);
     

        return redirect('event');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['kom'] = Kompetisi::find($id);
        return view('kom.edit',$data);
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
        $kom = Kompetisi::find($id);
     
        
        $kom->update([
            'nama' => $r->nama,
            'tgl_mulai' => $r->tgl_mulai,
            'tgl_akhir' => $r->tgl_akhir,
            'level' => $r->level,
            
            ]);
         
          
        return redirect('event');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kom = Kompetisi::find($id);
        $kom->delete();
        return redirect('event');
    }
}
