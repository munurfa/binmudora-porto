<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use Input;
use File;
use Validator;

class EventMudaController extends Controller
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
        $ep = DB::table('event_pemuda');

        $data['ep'] = $ep->paginate(10);
        $data['ep_all'] = $ep;
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('eventmuda.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $ep = DB::table('event_pemuda')->where('event_pemuda.nama','like',"%".$cari."%");

       $data['ep'] = $ep->paginate(10);
        $data['ep_all'] = $ep;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('eventmuda.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('eventmuda.tambah');
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
        DB::table('event_pemuda')->insert([
            'nama' => $r->nama,
            'tahun' => $r->tahun,
            'deskripsi' => $r->deskripsi,
        ]);
     

        return redirect('eventkepemudaan');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $data['ep'] = DB::table('event_pemuda')->where('id',$id)->first();
        return view('eventmuda.edit',$data);
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
        $ep = DB::table('event_pemuda')->where('id',$id);
     
        
        $ep->update([
            'nama' => $r->nama,
            'tahun' => $r->tahun,
            'deskripsi' => $r->deskripsi,
        ]);
         
          
        return redirect('eventkepemudaan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ep = DB::table('event_pemuda')->where('id',$id);
        $ep->delete();
        return redirect('eventkepemudaan');
    }
     public function struktur($id)
    {
         $ep_st = DB::table('peserta_event_pemuda')->where('peserta_event_pemuda.id_event','=',$id);

        $ep = DB::table('event_pemuda')->where('event_pemuda.id','=',$id)->first();
 
        $data['ep_st'] = $ep_st->paginate(10);
        $data['ep_st_all'] = $ep_st;
        $data['keyword'] = "";
        $data['ep'] = $ep;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('eventmuda.struktur',$data);
    }
    public function cariPeserta(Request $r,$id,$cari)
    {
       
       $ep_st = DB::table('peserta_event_pemuda')->where('peserta_event_pemuda.nama_peserta','like',"%".$cari."%")->where('peserta_event_pemuda.id_event','=',$id);
       
       $ep = DB::table('event_pemuda')->where('event_pemuda.id','=',$id)->first();
       
       $data['ep_st'] = $ep_st->paginate(10);
        $data['ep_st_all'] = $ep_st;
        $data['keyword'] = $cari;
        $data['eps'] = $ep;
        $data['no'] = 1;
       return view('eventmuda.caripeserta',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        $data['kab'] = DB::table('wilayah_kabupaten')->orderBy('nama')->lists('nama','nama');
        
        return view('eventmuda.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
            $this->validate($r,[
            'nama_peserta'=>'required',
            'tmp_lahir'=>'required' ]);
            DB::table('peserta_event_pemuda')->insert([
            'id_event'=> $r->id_event,
            'nama_peserta'=> $r->nama_peserta,
            'alamat'=> $r->alamat,
            'kota_kab'=> $r->kota_kab,
           'kelompok'=> $r->kelompok,
           'tmp_lahir'=> $r->tmp_lahir,
           'tgl_lahir'=> $r->tgl_lahir,
            ]);
        
        return redirect('eventkepemudaan/peserta/'.$r->id_event);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['ep_st'] = DB::table('peserta_event_pemuda')->where('id_peserta','=',$id)->first();
        $data['kab'] = DB::table('wilayah_kabupaten')->orderBy('nama')->lists('nama','nama');
        return view('eventmuda.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
          $this->validate($r,[
            'nama_peserta'=>'required',
            'tmp_lahir'=>'required' ]);
        $ev = DB::table('peserta_event_pemuda')->where('id_peserta',$id);
        $id=$ev->first();
        $ev->update([
            'id_event'=> $r->id_event,
            'nama_peserta'=> $r->nama_peserta,
            'alamat'=> $r->alamat,
            'kota_kab'=> $r->kota_kab,
           'kelompok'=> $r->kelompok,
           'tmp_lahir'=> $r->tmp_lahir,
           'tgl_lahir'=> $r->tgl_lahir,
            ]);
        
        return redirect('eventkepemudaan/peserta/'.$id->id_event);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('peserta_event_pemuda')->where('id_peserta',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('eventkepemudaan/peserta/'.$id->id_event);
    }
}
