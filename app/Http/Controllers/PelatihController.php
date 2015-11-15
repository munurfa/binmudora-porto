<?php

namespace App\Http\Controllers;

use App\Pelatih;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;


class PelatihController extends Controller
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
       
       $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','pelatihs.jenis')->paginate(10);

        $data['pelatih'] = $pelatih;
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;

        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('pelatih.index',$data);
    }

    public function cari(Request $r)
    {
       
       $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','pelatihs.jenis')
                        ->where('pelatihs.nama','like',"%".$r->keyword."%")->paginate(10);

       $data['pelatih'] = $pelatih;
      
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('pelatih.index',$data);
    }
       public function sort(Request $r)
    {
       
       $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','pelatihs.jenis')
                        ->where('pelatihs.cabang','=',$r->cabang)->paginate(10);

       $data['pelatih'] = $pelatih;
      
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('pelatih.index',$data);
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

        return view('pelatih.tambah',$data);
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
            'tgl_lahir' => 'required',
            'foto'=> 'image' ]);
        $pelatih = Pelatih::create([
            'cabang' => $r->cabang,
            'jenis' => $r->jenis,
            'nama' => $r->nama,
            'tmp_lahir' => $r->tmp_lahir,
            'tgl_lahir' => $r->tgl_lahir,
            'alamat' => $r->alamat,
            'jenis_kel' => $r->jenis_kel,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            
        ]);
      if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $lastId = $pelatih->id;
             $pelatih = Pelatih::find($lastId);
            
            $foto = $lastId.".".$ext;
           $pelatih->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/pelatih/',$foto);

        }else{
            
            $foto = "";
        }

        return redirect('pelatih');

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
        
        
        $data['pelatih'] = Pelatih::find($id);
        return view('pelatih.edit',$data);
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
        $pelatih = Pelatih::find($id);
        
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/pelatih/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            Input::file('foto')->move(public_path().'/foto/pelatih/',$foto);

        }else{
            
            $foto = $pelatih->foto;
        }
        
        $pelatih->update([
            'cabang' => $r->cabang,
            'jenis' => $r->jenis,
            'nama' => $r->nama,
            'tmp_lahir' => $r->tmp_lahir,
            'tgl_lahir' => $r->tgl_lahir,
            'alamat' => $r->alamat,
            'jenis_kel' => $r->jenis_kel,
            'no_telp' => $r->no_telp,
            'kota_kab' => $r->kota_kab,
            'foto'=> $foto
            ]);
         
          
        return redirect('pelatih');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pelatih = Pelatih::find($id);
          $foto = $pelatih->foto;
         $file_path = public_path("foto/pelatih/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $pelatih->delete();
        return redirect('pelatih');
    }
      public function event($id)
    {
         $pelatih_ev = DB::table('event_pelatih')
                        ->join('pelatihs','pelatihs.id','=','event_pelatih.id_pelatih')

                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)
                        ->paginate(10);

        $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)->first();

        $data['pelatih_ev'] = $pelatih_ev;
        $data['pelatih'] = $pelatih;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('pelatih.event',$data);
    }
    public function eventCreate($id)
    {
        $data['id'] = $id;
        return view('pelatih.tambah_event',$data);
    }
     public function eventStore(Request $r)
    {
        $this->validate($r,[
            'nama_event_pelatih'=>'required', 
            'tahun' => 'required']);
        DB::table('event_pelatih')->insert([
            'id_pelatih'=> $r->id_pelatih,
            'tingkat'=> $r->tingkat,
            'nama_event_pelatih'=> $r->nama_event_pelatih,
            'tahun'=> $r->tahun,
            'emas'=> $r->emas,
            'perak' => $r->perak, 
            'perunggu' => $r->perunggu

            ]);
        
        return redirect('pelatih/event/'.$r->id_pelatih);
    }
     public function eventEdit($id)
    {
        $data['id'] = $id;

        $data['pelatih_ev'] = DB::table('event_pelatih')->where('id_event_pelatih','=',$id)->first();
      
        return view('pelatih.edit_event',$data);
    }
      public function eventUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_event_pelatih'=>'required', 
            'tahun' => 'required']);
        $ev = DB::table('event_pelatih')->where('id_event_pelatih',$id);
        $id=$ev->first();
        $ev->update([
             
            'tingkat'=> $r->tingkat,
            'nama_event_pelatih'=> $r->nama_event_pelatih,
            'tahun'=> $r->tahun,
            'emas' => $r->emas, 
            'perak' => $r->perak,
            'perunggu'=>$r->perunggu 
            ]);
        
        return redirect('pelatih/event/'.$id->id_pelatih);
    }
       public function eventDelete($id)
    {
     
        $ev = DB::table('event_pelatih')->where('id_event_pelatih',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('pelatih/event/'.$id->id_pelatih);
    }


          public function serti($id)
    {
         $pelatih_se = DB::table('serti_pelatih')
                        ->join('pelatihs','pelatihs.id','=','serti_pelatih.id_pelatih')

                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)
                        ->paginate(10);

        $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)->first();

        $data['pelatih_se'] = $pelatih_se;
        $data['pelatih'] = $pelatih;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('pelatih.serti',$data);
    }
    public function sertiCreate($id)
    {
        $data['id'] = $id;
        return view('pelatih.tambah_serti',$data);
    }
     public function sertiStore(Request $r)
    {
        $this->validate($r,[
            'nama_serti_pelatih'=>'required', 
            'tahun' => 'required']);
        DB::table('serti_pelatih')->insert([
            'id_pelatih'=> $r->id_pelatih,
           
            'nama_serti_pelatih'=> $r->nama_serti_pelatih,
            'tahun'=> $r->tahun,
            

            ]);
        
        return redirect('pelatih/serti/'.$r->id_pelatih);
    }
     public function sertiEdit($id)
    {
        $data['id'] = $id;

        $data['pelatih_se'] = DB::table('serti_pelatih')->where('id_serti_pelatih','=',$id)->first();
      
        return view('pelatih.edit_serti',$data);
    }
      public function sertiUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_serti_pelatih'=>'required', 
            'tahun' => 'required']);
        $ev = DB::table('serti_pelatih')->where('id_serti_pelatih',$id);
        $id=$ev->first();
        $ev->update([
             
            'nama_serti_pelatih'=> $r->nama_serti_pelatih,
            'tahun'=> $r->tahun,
            ]);
        
        return redirect('pelatih/serti/'.$id->id_pelatih);
    }
       public function sertiDelete($id)
    {
     
        $ev = DB::table('serti_pelatih')->where('id_serti_pelatih',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('pelatih/serti/'.$id->id_pelatih);
    }


          public function riwayat($id)
    {
         $pelatih_riw = DB::table('riwayat_pelatih')
                        ->join('pelatihs','pelatihs.id','=','riwayat_pelatih.id_pelatih')

                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)
                        ->paginate(10);

        $pelatih = DB::table('pelatihs')
                        ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->where('pelatihs.id','=',$id)->first();

        $data['pelatih_riw'] = $pelatih_riw;
        $data['pelatih'] = $pelatih;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('pelatih.riwa',$data);
    }
    public function riwayatCreate($id)
    {
        $data['id'] = $id;
        return view('pelatih.tambah_riwa',$data);
    }
     public function riwayatStore(Request $r)
    {
        $this->validate($r,[
            'nama_riwayat_pelatih'=>'required', 
            'tahun' => 'required']);
        DB::table('riwayat_pelatih')->insert([
            'id_pelatih'=> $r->id_pelatih,
           
            'nama_riwayat_pelatih'=> $r->nama_riwayat_pelatih,
            'tahun'=> $r->tahun,
            

            ]);
        
        return redirect('pelatih/riwayat/'.$r->id_pelatih);
    }
     public function riwayatEdit($id)
    {
        $data['id'] = $id;

        $data['pelatih_riw'] = DB::table('riwayat_pelatih')->where('id_riwayat_pelatih','=',$id)->first();
      
        return view('pelatih.edit_riwa',$data);
    }
      public function riwayatUpdate(Request $r,$id)
    {
     
          $this->validate($r,[
            'nama_riwayat_pelatih'=>'required', 
            'tahun' => 'required']);
        $ev = DB::table('riwayat_pelatih')->where('id_riwayat_pelatih',$id);
        $id=$ev->first();
        $ev->update([
             
            'nama_riwayat_pelatih'=> $r->nama_riwayat_pelatih,
            'tahun'=> $r->tahun,
            ]);
        
        return redirect('pelatih/riwayat/'.$id->id_pelatih);
    }
       public function riwayatDelete($id)
    {
     
        $ev = DB::table('riwayat_pelatih')->where('id_riwayat_pelatih',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('pelatih/riwayat/'.$id->id_pelatih);
    }
}
