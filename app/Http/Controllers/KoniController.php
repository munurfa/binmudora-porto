<?php

namespace App\Http\Controllers;

use App\Koni;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class KoniController extends Controller
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
       
       $koni = DB::table('konis');

        $data['koni'] = $koni->paginate(10);
        $data['koni_all'] = $koni;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('koni.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $koni = DB::table('konis')->where('konis.nama','like',"%".$cari."%");

       $data['koni'] = $koni->paginate(10);
      $data['koni_all'] = $koni;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('koni.cari',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('koni.tambah');
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
            'nama'=>'required']);
        $koni = Koni::create([
            'tingkat' => $r->tingkat,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            
            
        ]);
     

        return redirect('koni');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['koni'] = Koni::find($id);
        return view('koni.edit',$data);
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
            'nama'=>'required']);
        $koni = Koni::find($id);
     
        
        $koni->update([
            'tingkat' => $r->tingkat,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            
            ]);
         
          
        return redirect('koni');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $koni = Koni::find($id);
        $koni->delete();
        return redirect('koni');
    }

      public function struktur($id)
    {
         $koni_st = DB::table('koni_struktur')->where('koni_struktur.id_koni','=',$id);

        $koni = DB::table('konis')->where('konis.id','=',$id)->first();

        $data['koni_st'] = $koni_st->paginate(10);
        $data['koni_st_all'] = $koni_st;
        $data['koni'] = $koni;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('koni.struktur',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        return view('koni.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
            $this->validate($r,[
            'nama_anggota'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        DB::table('koni_struktur')->insert([
            'id_koni'=> $r->id_koni,
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 

            ]);
        
        return redirect('koni/struktur/'.$r->id_koni);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['koni_st'] = DB::table('koni_struktur')->where('id_anggota','=',$id)->first();
      
        return view('koni.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
         $this->validate($r,[
            'nama_anggota'=>'required',
            'tmp_lahir'=>'required' ,
            'tgl_lahir'=>'required',
            'jabatan'=>'required'  ]);
        $ev = DB::table('koni_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->update([
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 
            ]);
        
        return redirect('koni/struktur/'.$id->id_koni);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('koni_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('koni/struktur/'.$id->id_koni);
    }

}
