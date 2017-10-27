<?php

namespace App\Http\Controllers;

use App\Artikel;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use DB;
use Illuminate\Http\Request;
use Input;
use File;
use Validator;

class ArtikelController extends Controller
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
        $artikel = DB::table('artikels');
       
        
        $data['all_artikel'] = $artikel;
        $data['artikel'] = $artikel->paginate(10);
        
        $data['keyword'] = $r->keyword;
        $data['no'] = 1;
       return view('artikel.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('artikel.tambah');
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
            'judul'=>'required', 
            'isi' => 'required',
            'image'=> 'image' ]);
        
        $artikel = Artikel::create([
            'judul' => $r->judul,
            'kategori' => $r->kategori,
            'isi' => $r->isi,
             
        ]);
        
           if (Input::file('image') != ""){
            $ext = Input::file('image')->getClientOriginalExtension();
            $lastId = $artikel->id;
             $artikel = Artikel::find($lastId);
            
            $image = $lastId.".".$ext;
           $artikel->update(['image'=> $image]);
            Input::file('image')->move(public_path().'/img',$image);

        }else{
            
            $image = "";
        }

        
        
        return redirect('artikel');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function cari(Request $r,$cari)
    {
       
       $artikel = DB::table('artikels')->where('artikels.judul','like',"%".$cari."%");

        $data['all_artikel'] = $artikel;
       $data['artikel'] = $artikel->paginate(10);
      
        $data['keyword'] = $cari;
        $data['no'] = 1;
       return view('artikel.cari',$data);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       
        
        
        $data['artikel'] = Artikel::find($id);
        return view('artikel.edit',$data);
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
            'judul'=>'required', 
            'isi' => 'required',
            'image'=> 'image' ]);
        $artikel = Artikel::find($id);
        
         if (Input::file('image') != ""){
            $ext = Input::file('image')->getClientOriginalExtension();
            $image = $id.".".$ext;
            $file_path = public_path("img/{$image}");

            if(File::exists($file_path)) 
                File::delete($file_path);
            
            Input::file('image')->move(public_path().'/img',$image);

        }else{
            
            $image = $artikel->image;
        }
        
        $artikel->update([
            'judul' => $r->judul,
            'kategori' => $r->kategori,
            'isi' => $r->isi,
            'image' => $image,
           
            ]);
         
          
        return redirect('artikel');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $artikel = Artikel::find($id);
        $image = $artikel->image;
         $file_path = public_path("img/{$image}");

            if(File::exists($file_path)) 
                File::delete($file_path);
        $artikel->delete();

        
        return redirect('artikel');
    }
}
