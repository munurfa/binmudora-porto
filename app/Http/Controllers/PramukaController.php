<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class PramukaController extends Controller
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
       
       $pra = DB::table('pramuka');

        $data['pra'] = $pra->paginate(10);
      $data['pra_all'] = $pra;
      $data['keyword'] = "";
        $data['no'] = 1;
       return view('pramuka.index',$data);
    }
       public function cari(Request $r,$cari)
    {
       
       $pra = DB::table('pramuka')->where('pramuka.nama','like',"%".$cari."%");

       $data['pra'] = $pra->paginate(10);
      $data['pra_all'] = $pra;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('pramuka.cari',$data);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pramuka.tambah');
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
        DB::table('pramuka')->insert([
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
            'siaga_l' => $r->siaga_l,
            'siaga_p' => $r->siaga_p,
             'penggalang_l' => $r->penggalang_l,
             'penggalang_p' => $r->penggalang_p,
              'penegak_l' => $r->penegak_l,
             'penegak_p' => $r->penegak_p,
             'pandega_l' => $r->pandega_l,
             'pandega_p' => $r->pandega_p,
             'lb_l' => $r->lb_l,
             'lb_p' => $r->lb_p,
            
        ]);
     

        return redirect('kepanduan');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['pra'] = DB::table('pramuka')->where('id_pramuka',$id)->first();
        return view('pramuka.edit',$data);
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
        $pra = DB::table('pramuka')->where('id_pramuka',$id);
     
        
        $pra->update([
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'kota_kab' => $r->kota_kab,
            'siaga_l' => $r->siaga_l,
            'siaga_p' => $r->siaga_p,
             'penggalang_l' => $r->penggalang_l,
             'penggalang_p' => $r->penggalang_p,
              'penegak_l' => $r->penegak_l,
             'penegak_p' => $r->penegak_p,
             'pandega_l' => $r->pandega_l,
             'pandega_p' => $r->pandega_p,
             'lb_l' => $r->lb_l,
             'lb_p' => $r->lb_p,
            
            ]);
         
          
        return redirect('kepanduan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pra = DB::table('pramuka')->where('id_pramuka',$id);
        $pra->delete();
        return redirect('kepanduan');
    }

      public function struktur($id)
    {
         $pra_st = DB::table('pramuka_struktur')->where('pramuka_struktur.id_pramuka','=',$id);

        $pra = DB::table('pramuka')->where('pramuka.id_pramuka','=',$id)->first();
        $data['pra_st_all'] = $pra_st;
        $data['pra_st'] = $pra_st->paginate(10);
        $data['pra'] = $pra;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('pramuka.struktur',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        return view('pramuka.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
         $this->validate($r,[
            'nama_anggota'=>'required',
            'tgl_lahir'=>'required',
            'tmp_lahir'=>'required',
            'jabatan'=>'required']);
        DB::table('pramuka_struktur')->insert([
            'id_pramuka'=> $r->id_pramuka,
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 

            ]);
        
        return redirect('kepanduan/struktur/'.$r->id_pramuka);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['pra_st'] = DB::table('pramuka_struktur')->where('id_anggota','=',$id)->first();
      
        return view('pramuka.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
         $this->validate($r,[
            'nama_anggota'=>'required',
            'tgl_lahir'=>'required',
            'tmp_lahir'=>'required',
            'jabatan'=>'required']);

        $ev = DB::table('pramuka_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->update([
            'nama_anggota'=> $r->nama_anggota,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan 
            ]);
        
        return redirect('kepanduan/struktur/'.$id->id_pramuka);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('pramuka_struktur')->where('id_anggota',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('kepanduan/struktur/'.$id->id_pramuka);
    }

}
