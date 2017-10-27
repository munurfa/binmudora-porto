<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use Input;
use File;
use Validator;

class KUController extends Controller
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
        $ku = DB::table('ku');

        $data['ku'] = $ku->paginate(10);
        $data['ku_all'] = $ku;
        $data['keyword'] = "";
        $data['no'] = 1;
       return view('ku.index',$data);
    }
     public function cari(Request $r,$cari)
    {
       
       $ku = DB::table('ku')->where('ku.nama','like',"%".$cari."%");

       $data['ku'] = $ku->paginate(10);
        $data['ku_all'] = $ku;
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('ku.cari',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('ku.tambah');
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
        DB::table('ku')->insert([
            'nama' => $r->nama,
        ]);
     

        return redirect('wirausahabidang');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $data['ku'] = DB::table('ku')->where('id',$id)->first();
        return view('ku.edit',$data);
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
        $ku = DB::table('ku')->where('id',$id);
     
        
        $ku->update([
            'nama' => $r->nama,
        ]);
         
          
        return redirect('wirausahabidang');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ku = DB::table('ku')->where('id',$id);
        $ku->delete();
        return redirect('wirausahabidang');
    }
     public function struktur($id)
    {
         $ku_st = DB::table('usaha')->where('usaha.ku_id','=',$id);

        $ku = DB::table('ku')->where('ku.id','=',$id)->first();
 
        $data['ku_st'] = $ku_st->paginate(10);
        $data['ku_st_all'] = $ku_st;
        $data['keyword'] = "";
        $data['ku'] = $ku;
       // dd($data);
       // die;
        $data['no'] = 1;
       return view('ku.struktur',$data);
    }
    public function cariUsaha(Request $r,$id,$cari)
    {
       
       $ku_st = DB::table('usaha')->where('usaha.nama_usaha','like',"%".$cari."%")->where('usaha.ku_id','=',$id);
       
       $ku = DB::table('ku')->where('ku.id','=',$id)->first();
       
       $data['ku_st'] = $ku_st->paginate(10);
        $data['ku_st_all'] = $ku_st;
        $data['keyword'] = $cari;
        $data['kus'] = $ku;
        $data['no'] = 1;
       return view('ku.cariusaha',$data);
    }
    public function strukturCreate($id)
    {
        $data['id'] = $id;
        return view('ku.tambah_struktur',$data);
    }
     public function strukturStore(Request $r)
    {
            $this->validate($r,[
            'nama_usaha'=>'required',
            'ketua'=>'required' ]);
        DB::table('usaha')->insert([
            'ku_id'=> $r->ku_id,
            'nama_usaha'=> $r->nama_usaha,
            'alamat'=> $r->alamat,
            'ketua'=> $r->ketua,
           'npwp'=> $r->npwp,
           'status'=> $r->status

            ]);
        
        return redirect('wirausaha/struktur/'.$r->ku_id);
    }
     public function strukturEdit($id)
    {
        $data['id'] = $id;

        $data['ku_st'] = DB::table('usaha')->where('id','=',$id)->first();
      
        return view('ku.edit_struktur',$data);
    }
      public function strukturUpdate(Request $r,$id)
    {
          $this->validate($r,[
            'nama_usaha'=>'required',
            'ketua'=>'required' ]);
        $ev = DB::table('usaha')->where('id',$id);
        $id=$ev->first();
        $ev->update([
            'ku_id'=> $r->ku_id,
            'nama_usaha'=> $r->nama_usaha,
            'alamat'=> $r->alamat,
            'ketua'=> $r->ketua,
           'npwp'=> $r->npwp,
           'status'=> $r->status
            ]);
        
        return redirect('wirausaha/struktur/'.$id->ku_id);
    }
       public function strukturDelete($id)
    {
     
        $ev = DB::table('usaha')->where('id',$id);
        $id=$ev->first();
        $ev->delete();
        
        return redirect('wirausaha/struktur/'.$id->ku_id);
    }
}
