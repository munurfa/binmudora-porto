<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class SarjanaController extends Controller
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
       
       $sar = DB::table('sarjana')->paginate(10);

        $data['sar'] = $sar;

        // $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('sarjana.index',$data);
    }
    //  public function cari(Request $r)
    // {
       
    //    $koni = DB::table('konis')->where('konis.nama','like',"%".$r->keyword."%")->paginate(10);

    //    $data['koni'] = $koni;
      
    //     $data['keyword'] = $r->keyword;
    //     $data['no'] = 1;
    //    return view('koni.index',$data);
    // }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sarjana.tambah');
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
            'tmp_lahir'=>'required',
            'tgl_lahir'=>'required']);
        DB::table('sarjana')->insert([
            'kota_kab' => $r->kota_kab,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'tmp_lahir' => $r->tmp_lahir,
             'tgl_lahir' => $r->tgl_lahir,
             'jenis_kel' => $r->jenis_kel,
             'no_telp' => $r->no_telp,
             'lokasi' => $r->lokasi,
             'angkatan' => $r->angkatan,
             'sumber_dana' => $r->sumber_dana,
             'dasar' => $r->dasar,
             'masa' => $r->masa,
            
            
        ]);
     

        return redirect('sp');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data['sar'] = DB::table('sarjana')->where('id_sarjana',$id)->first();
        return view('sarjana.edit',$data);
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
            'tmp_lahir'=>'required',
            'tgl_lahir'=>'required']);
        $sar = DB::table('sarjana')->where('id_sarjana',$id);
     
        
        $sar->update([
            'kota_kab' => $r->kota_kab,
            'nama' => $r->nama,
            'alamat' => $r->alamat,
            'no_telp' => $r->no_telp,
            'tmp_lahir' => $r->tmp_lahir,
             'tgl_lahir' => $r->tgl_lahir,
             'jenis_kel' => $r->jenis_kel,
             'no_telp' => $r->no_telp,
             'lokasi' => $r->lokasi,
             'angkatan' => $r->angkatan,
             'sumber_dana' => $r->sumber_dana,
             'dasar' => $r->dasar,
             'masa' => $r->masa,
            
            ]);
         
          
        return redirect('sp');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sar = DB::table('sarjana')->where('id_sarjana',$id);
        $sar->delete();
        return redirect('sp');
    }

    public function event($id)
    {
         $sar_ev = DB::table('sarjana_event')->paginate(10);

        $sar = DB::table('sarjana')->where('sarjana.id_sarjana','=',$id)->first();

        $data['sar_ev'] = $sar_ev;
        $data['sar'] = $sar;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('sarjana.event',$data);
    }
    public function eventCreate($id)
    {
        $data['id'] = $id;
        return view('sarjana.tambah_event',$data);
    }
     public function eventStore(Request $r)
    {
         $this->validate($r,[
            'nama_event_sarjana'=>'required', 
            'tahun' => 'required',
             ]);
        DB::table('sarjana_event')->insert([
            'id_sarjana'=> $r->id_sarjana,
            'tingkat'=> $r->tingkat,
            'nama_event_sarjana'=> $r->nama_event_sarjana,
            'tahun'=> $r->tahun
           

            ]);
        
        return redirect('sp/event/'.$r->id_sarjana);
    }
     public function eventEdit($id)
    {
        $data['id'] = $id;

        $data['sar_ev'] = DB::table('sarjana_event')->where('id_event','=',$id)->first();
      
        return view('sarjana.edit_event',$data);
    }
      public function eventUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_event_sarjana'=>'required', 
            'tahun' => 'required',
             ]);
        $ev = DB::table('sarjana_event')->where('id_event',$id);
        $id=$ev->first();
        $ev->update([
             
            'tingkat'=> $r->tingkat,
            'nama_event_sarjana'=> $r->nama_event_sarjana,
            'tahun'=> $r->tahun,
            ]);
        
        return redirect('sp/event/'.$id->id_sarjana);
    }
       public function eventDelete($id)
    {
     
        $ev = DB::table('sarjana_event')->where('id_event',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('sp/event/'.$id->id_sarjana);
    }
}
