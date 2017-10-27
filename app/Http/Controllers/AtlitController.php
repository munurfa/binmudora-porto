<?php

namespace App\Http\Controllers;

use App\Atlit;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Auth;
use Validator;


class AtlitController extends Controller
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
       $atlit = DB::table('atlits')
                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','atlits.jenis');
       
       if (Auth::user()->cabang=="000") {
           $atlit=$atlit;
       } else {
           $atlit=$atlit->where("cabang","=",Auth::user()->cabang);
       }
       
       
        
        $data['all_atlit'] = $atlit;
        $data['atlit'] = $atlit->paginate(10);
        
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('atlit.index',$data);
    }

     public function cari(Request $r,$cari)
    {
       
       $atlit = DB::table('atlits')
                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','atlits.jenis')
                        ->where('atlits.nama','like',"%".$cari."%");

        $data['all_atlit'] = $atlit;
       $data['atlit'] = $atlit->paginate(10);
      
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('atlit.cari',$data);
    }
  
       public function sort(Request $r, $sort)
    {
      
       $atlit = DB::table('atlits')
                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','atlits.jenis')
                        ->where('atlits.cabang','=',$sort);
         $data['all_atlit'] = $atlit;
       $data['atlit'] = $atlit->paginate(10);
      
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['sort'] = $sort;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('atlit.sortby',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $jenis = DB::table('jeniss')->lists('nama_jenis','id_jenis');
        $data['cabang'] = $cabang;
        $data['jenis'] = $jenis;

        return view('atlit.tambah',$data);
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
            'foto'=> 'image' ]);
        
        $atlit = Atlit::create([
            'cabang' => $r->cabang,
            'jenis' => $r->jenis,
            'nama' => $r->nama,
            'tmp_lahir' => $r->tmp_lahir,
            'tgl_lahir' => $r->tgl_lahir,
            'alamat' => $r->alamat,
            'jenis_kel' => $r->jenis_kel,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            'tinggi_badan' => $r->tinggi_badan,
            'berat_badan' => $r->berat_badan,
            'spesialis' => $r->spesialis,
            'potensial' => $r->potensial,
            'status' => $r->status, 
            'tanggal_status' => $r->tanggal_status, 
        ]);
        
           if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $atlit->id;
             $atlit = Atlit::find($lastId);
            
            $foto = $lastId.".".$ext;
           $atlit->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/atlit/',$foto);

        }else{
            
            $foto = "";
        }

        
        
        return redirect('atlit');

    }

   

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $jenis = DB::table('jeniss')->lists('nama_jenis','id_jenis');
        $data['cabang'] = $cabang;
        $data['jenis'] = $jenis;
        
        
        $data['atlit'] = Atlit::find($id);
        return view('atlit.edit',$data);
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
            'tgl_lahir' => 'required',
            'foto'=> 'image' ]);
        $atlit = Atlit::find($id);
        
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/atlit/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/atlit',$foto);

        }else{
            
            $foto = $atlit->foto;
        }
        
        $atlit->update([
            'cabang' => $r->cabang,
            'jenis' => $r->jenis,
            'kab_kota' => $r->kab_kota,
            'nama' => $r->nama,
            'tmp_lahir' => $r->tmp_lahir,
            'tgl_lahir' => $r->tgl_lahir,
            'alamat' => $r->alamat,
            'jenis_kel' => $r->jenis_kel,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            'tinggi_badan' => $r->tinggi_badan,
            'berat_badan' => $r->berat_badan,
            'spesialis' => $r->spesialis,
            'potensial' => $r->potensial,
            'status' => $r->status, 
            'tanggal_status' => $r->tanggal_status, 
            'foto'=> $foto
            ]);
         
          
        return redirect('atlit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $atlit = Atlit::find($id);
        $foto = $atlit->foto;
         $file_path = public_path("foto/atlit/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $atlit->delete();

        
        return redirect('atlit');
    }
    public function event($id)
    {
         $atlit_ev = DB::table('event_atlit')
                        ->join('atlits','atlits.id','=','event_atlit.id_atlit')

                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')->where('atlits.id','=',$id)
                        ->paginate(10);

        $atlit = DB::table('atlits')
                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')->where('atlits.id','=',$id)->first();

        $data['atlit_ev'] = $atlit_ev;
        $data['atlit'] = $atlit;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('atlit.event',$data);
    }
    public function eventCreate($id)
    {
        $data['id'] = $id;
        return view('atlit.tambah_event',$data);
    }
     public function eventStore(Request $r)
    {
         $this->validate($r,[
            'nama_event_atlit'=>'required', 
            'tahun' => 'required']);
        DB::table('event_atlit')->insert([
            'id_atlit'=> $r->id_atlit,
            'tingkat'=> $r->tingkat,
            'nama_event_atlit'=> $r->nama_event_atlit,
            'tahun'=> $r->tahun,
            'medali' => $r->medali, 
            'peringkat' => $r->peringkat

            ]);
        
        return redirect('atlit/event/'.$r->id_atlit);
    }
     public function eventEdit($id)
    {
        $data['id'] = $id;

        $data['atlit_ev'] = DB::table('event_atlit')->where('id_event_atlit','=',$id)->first();
      
        return view('atlit.edit_event',$data);
    }
      public function eventUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_event_atlit'=>'required', 
            'tahun' => 'required']);
        $ev = DB::table('event_atlit')->where('id_event_atlit',$id);
        $id=$ev->first();
        $ev->update([
             
            'tingkat'=> $r->tingkat,
            'nama_event_atlit'=> $r->nama_event_atlit,
            'tahun'=> $r->tahun,
            'medali' => $r->medali, 
            'peringkat' => $r->peringkat
            ]);
        
        return redirect('atlit/event/'.$id->id_atlit);
    }
       public function eventDelete($id)
    {
     
        $ev = DB::table('event_atlit')->where('id_event_atlit',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('atlit/event/'.$id->id_atlit);
    }
}

