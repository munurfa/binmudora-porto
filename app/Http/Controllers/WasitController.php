<?php

namespace App\Http\Controllers;

use App\Wasit;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class WasitController extends Controller
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
       
       $wasit = DB::table('wasits')
                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','wasits.jenis');

        $data['wasit'] = $wasit->paginate(10);
        $data['wasit_all'] = $wasit;
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;

        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('wasit.index',$data);
    }

    public function cari(Request $r,$cari)
    {
       
       $wasit = DB::table('wasits')
                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','wasits.jenis')
                        ->where('wasits.nama','like',"%".$cari."%");

       $data['wasit'] = $wasit->paginate(10);
       $data['wasit_all'] = $wasit;
      
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('wasit.cari',$data);
    }
       public function sort(Request $r,$sort)
    {
       
       $wasit = DB::table('wasits')
                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')
                        ->join('jeniss','jeniss.id_jenis','=','wasits.jenis')
                        ->where('wasits.cabang','=',$sort);

       $data['wasit'] = $wasit->paginate(10);
      $data['wasit_all'] = $wasit;
        $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $data['cabang'] = $cabang;
        $data['sort'] = $sort;
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('wasit.sort',$data);
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

        return view('wasit.tambah',$data);
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
        $wasit = Wasit::create([
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
            $lastId = $wasit->id;
             $wasit = Wasit::find($lastId);
            
            $foto = $lastId.".".$ext;
           $wasit->update(['foto'=> $foto]);
            Input::file('foto')->move(public_path().'/foto/wasit/',$foto);

        }else{
            
            $foto = "";
        }

        return redirect('wasit');

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
        
        
        $data['wasit'] = Wasit::find($id);
        return view('wasit.edit',$data);
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
        $wasit = Wasit::find($id);
        
         if (Input::file('foto') != ""){
            $ext = Input::file('foto')->getClientOriginalExtension();
            $foto = $id.".".$ext;
            $file_path = public_path("foto/wasit/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            Input::file('foto')->move(public_path().'/foto/wasit/',$foto);

        }else{
            
            $foto = $wasit->foto;
        }
        
        $wasit->update([
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
         
          
        return redirect('wasit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $wasit = Wasit::find($id);
          $foto = $wasit->foto;
         $file_path = public_path("foto/wasit/{$foto}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $wasit->delete();
        return redirect('wasit');
    }

    public function event($id)
    {
         $wasit_ev = DB::table('event_wasit')
                        ->join('wasits','wasits.id','=','event_wasit.id_wasit')

                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->where('wasits.id','=',$id)
                        ->paginate(10);

        $wasit = DB::table('wasits')
                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->where('wasits.id','=',$id)->first();

        $data['wasit_ev'] = $wasit_ev;
        $data['wasit'] = $wasit;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('wasit.event',$data);
    }
    public function eventCreate($id)
    {
        $data['id'] = $id;
        return view('wasit.tambah_event',$data);
    }
     public function eventStore(Request $r)
    {
         $this->validate($r,[
            'nama_event_wasit'=>'required', 
            'tahun' => 'required',
             ]);
        DB::table('event_wasit')->insert([
            'id_wasit'=> $r->id_wasit,
            'tingkat'=> $r->tingkat,
            'nama_event_wasit'=> $r->nama_event_wasit,
            'tahun'=> $r->tahun
           

            ]);
        
        return redirect('wasit/event/'.$r->id_wasit);
    }
     public function eventEdit($id)
    {
        $data['id'] = $id;

        $data['wasit_ev'] = DB::table('event_wasit')->where('id_event_wasit','=',$id)->first();
      
        return view('wasit.edit_event',$data);
    }
      public function eventUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_event_wasit'=>'required', 
            'tahun' => 'required',
             ]);
        $ev = DB::table('event_wasit')->where('id_event_wasit',$id);
        $id=$ev->first();
        $ev->update([
             
            'tingkat'=> $r->tingkat,
            'nama_event_wasit'=> $r->nama_event_wasit,
            'tahun'=> $r->tahun,
            ]);
        
        return redirect('wasit/event/'.$id->id_wasit);
    }
       public function eventDelete($id)
    {
     
        $ev = DB::table('event_wasit')->where('id_event_wasit',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('wasit/event/'.$id->id_wasit);
    }


          public function serti($id)
    {
         $wasit_se = DB::table('serti_wasit')
                        ->join('wasits','wasits.id','=','serti_wasit.id_wasit')

                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->where('wasits.id','=',$id)
                        ->paginate(10);

        $wasit = DB::table('wasits')
                        ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->where('wasits.id','=',$id)->first();

        $data['wasit_se'] = $wasit_se;
        $data['wasit'] = $wasit;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('wasit.serti',$data);
    }
    public function sertiCreate($id)
    {
        $data['id'] = $id;
        return view('wasit.tambah_serti',$data);
    }
     public function sertiStore(Request $r)
    {
       $this->validate($r,[
            'nama_serti_wasit'=>'required', 
            'tahun' => 'required',
             ]);

        DB::table('serti_wasit')->insert([
            'id_wasit'=> $r->id_wasit,
           
            'nama_serti_wasit'=> $r->nama_serti_wasit,
            'tahun'=> $r->tahun,
            

            ]);
        
        return redirect('wasit/serti/'.$r->id_wasit);
    }
     public function sertiEdit($id)
    {
        $data['id'] = $id;

        $data['wasit_se'] = DB::table('serti_wasit')->where('id_serti_wasit','=',$id)->first();
      
        return view('wasit.edit_serti',$data);
    }
      public function sertiUpdate(Request $r,$id)
    {
     
        $this->validate($r,[
            'nama_serti_wasit'=>'required', 
            'tahun' => 'required',
             ]);
        $ev = DB::table('serti_wasit')->where('id_serti_wasit',$id);
        $id=$ev->first();
        $ev->update([
             
            'nama_serti_wasit'=> $r->nama_serti_wasit,
            'tahun'=> $r->tahun,
            ]);
        
        return redirect('wasit/serti/'.$id->id_wasit);
    }
       public function sertiDelete($id)
    {
     
        $ev = DB::table('serti_wasit')->where('id_serti_wasit',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('wasit/serti/'.$id->id_wasit);
    }

}
