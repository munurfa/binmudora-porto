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
       
       $kom = DB::table('kompetisi');

        $data['kom'] = $kom->paginate(10);
      $data['kom_all'] = $kom;
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('kom.index',$data);
    }
  public function cari(Request $r,$cari)
    {
       
       $kom = DB::table('kompetisi')->where('kompetisi.nama','like',"%".$cari."%");

       $data['kom'] = $kom->paginate(10);
      $data['kom_all'] = $kom;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('kom.cari',$data);
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
       public function struktur($id)
    {
         $kon_st = DB::table('kontingen')->where('kontingen.id_event','=',$id);

        $kon = DB::table('kompetisi')->where('kompetisi.id','=',$id)->first();
        $data['kon_st_all'] = $kon_st;
        $data['kon_st'] = $kon_st->paginate(10);
        $data['kon'] = $kon;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('kom.struktur',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        $data['cab'] = DB::table('cabangs')->lists('nama_cab','nama_cab');
        return view('kom.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
         $this->validate($r,[
            'nama_kontingen'=>'required',
            'tmp_lahir'=>'required',
            'foto'=> 'image'
            ]);
        $kon =  DB::table('kontingen')->insertGetId([
            'id_event'=> $r->id_event,
            'cabang'=> $r->cabang,
            'nama_kontingen'=> $r->nama_kontingen,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan ,
           'no_telp'=> $r->no_telp ,
           'jenis_kel' => $r->jenis_kel,
           'tinggi' => $r->tinggi,
           'berat' => $r->berat,
           'alamat' => $r->alamat
            ]);
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $kon;
          $konfoto = DB::table('kontingen')->where("kontingen.id_kontingen","=",$lastId);
            
           $foto = $lastId.".".$ext;

           $konfoto->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/kontingen/',$foto);

        }else{
            
            $foto = "";
        }
        
        return redirect('event/kontingen/'.$r->id_event);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;
        $data['cab'] = DB::table('cabangs')->lists('nama_cab','nama_cab');
        $data['kon_st'] = DB::table('kontingen')->where('id_kontingen','=',$id)->first();
      
        return view('kom.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
        $this->validate($r,[
            'nama_kontingen'=>'required',
            'tgl_lahir'=>'required',
            
            ]);
         $konfoto = DB::table('kontingen')->where("kontingen.id_kontingen","=",$id)->first();
        if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/kontingen/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('foto')->move(public_path().'/foto/kontingen',$foto);

        }else{
            
            $foto = $konfoto->foto;
        }
        $ev = DB::table('kontingen')->where('id_kontingen',$id);
        $id=$ev->first();
        $ev->update([
            'cabang'=> $r->cabang,
            'nama_kontingen'=> $r->nama_kontingen,
            'tgl_lahir'=> $r->tgl_lahir,
           'tmp_lahir'=> $r->tmp_lahir,
           'jabatan'=> $r->jabatan ,
           'no_telp'=> $r->no_telp ,
           'jenis_kel' => $r->jenis_kel,
           'tinggi' => $r->tinggi,
           'berat' => $r->berat,
           'foto' => $foto
            ]);
        
        return redirect('event/kontingen/'.$id->id_event);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('kontingen')->where('id_kontingen',$id);
        $id=$ev->first();
        $foto = $id->foto;
         $file_path = public_path("foto/kontingen/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $ev->delete();
        
        return redirect('event/kontingen/'.$id->id_event);
    }
     public function printCard($idkom,$id)
    {
        
        
        $data['kon_st'] = DB::table('kontingen')->where('id_kontingen','=',$id)->first();
        $data['kon'] = DB::table('kompetisi')->where('kompetisi.id','=',$idkom)->first();
        return view('kom.card',$data);
    }

}
