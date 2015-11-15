<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use PDF;
use Atlit;
use Excel;

class ReportController extends Controller
{
       public function __construct()
    {
        $this->middleware('auth');
    }
    public function setOR()
    {
    	 $cabang = DB::table('cabangs')->lists('nama_cab','id_cabang');
        $jenis = DB::table('jeniss')->lists('nama_jenis','id_jenis');
        $pilcab = ["000" =>"PILIH CABANG"];
        $data['cabang'] = array_merge($pilcab,$cabang);
        // $piljen = ["000" =>"PILIH JENIS"];
        // $data['jenis'] = array_merge($piljen,$jenis);
        return view('report.getor',$data);
    }
    public function setSarana()
    {
    	return view('report.getsar');
    }
        public function setMuda()
    {
        return view('report.getmuda');
    }
     public function getSarana(Request $r)
    {
    	$pilih = $r->pilih;

    	if($pilih == "sarpras_ors"){
    		$sor = DB::table('sarpras_ors')->get();

	        $data['sor'] = $sor;
	        
	        $data['no'] = 1;
            return view('report.sor',$data);
         //    $pdf = PDF::loadView('report.sor',$data);
	       	// return $pdf->stream('sarana_olahraga.pdf');
    	}elseif ($pilih == "sarpras_muda") {
    		$sarmud = DB::table('sarpras_muda')->get();

	        $data['sarmud'] = $sarmud;
	       
	        $data['no'] = 1;
            return view('report.sarmud',$data);
        //     $pdf = PDF::loadView('report.sarmud',$data);
	       // return $pdf->stream('sarana_kepemudaan.pdf');
    	}elseif ($pilih == "sarpras_public") {
    	 $sarpub = DB::table('sarpras_public')->get();

        $data['sarpub'] = $sarpub;
        $data['no'] = 1;
        return view('report.sarpub',$data);
       //  $pdf = PDF::loadView('report.sarpub',$data);
       // return $pdf->stream('sarana_publik.pdf');
    	}
    	elseif ($pilih == "sarpras_asset") {
    	       $sarass = DB::table('sarpras_asset')->get();

        $data['sarass'] = $sarass;
       
        $data['no'] = 1;
        return view('report.sarass',$data);
       //  $pdf = PDF::loadView('report.sarass',$data);
       // return $pdf->stream('sarana_asset.pdf');
    	}
    }
    public function getOR(Request $r)
    {
        $pilih = $r->pilih;
        $cabang = $r->cabang;
     
        if($pilih == "atlit"){
            
           if ($cabang != "000") {
               $atlit_pres = DB::table('atlits')
                    ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')
                    ->where('id_cabang',$cabang);
           }else{
            $atlit_pres = DB::table('atlits')
                    ->join('cabangs','cabangs.id_cabang','=','atlits.cabang');
           }
            
            

            $data['cab'] = $cabang;
            $data['atlit_pres'] = $atlit_pres->get();
            $data['cabang'] = DB::table('cabangs')->where('id_cabang',$cabang)->first();
            $data['no'] = 1;
            return view('report.sor_atlit',$data);
    
        }elseif ($pilih == "pelatih") {
              $grupby = DB::table('serti_pelatih')
                    ->join('pelatihs','pelatihs.id','=','serti_pelatih.id_pelatih')
                         ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')
                    ->groupBy('id_pelatih')->paginate();
            
           
      
   
            $pelatih_se = DB::table('serti_pelatih')
                        ->join('pelatihs','pelatihs.id','=','serti_pelatih.id_pelatih')
                         ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->get();
            

            $data['pelatih_se'] = $pelatih_se;
            $data['grupby'] = $grupby;
           
            $data['no'] = 1;
            return view('report.sor_pelatih',$data);
     
        }elseif ($pilih == "wasit") {
         $grupby = DB::table('serti_wasit')
                    ->join('wasits','wasits.id','=','serti_wasit.id_wasit')
                         ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')
                    ->groupBy('id_wasit')->paginate();
            
           
      
   
            $wasit_se = DB::table('serti_wasit')
                        ->join('wasits','wasits.id','=','serti_wasit.id_wasit')
                         ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->get();
            

            $data['wasit_se'] = $wasit_se;
            $data['grupby'] = $grupby;
        $data['no'] = 1;
        return view('report.sor_wasit',$data);
     
        }
    }
 
         public function getMuda(Request $r)
    {
        $pilih = $r->pilih;

        if($pilih == "okp"){
            $okp = DB::table('okp')->get();

            $data['okp'] = $okp;
            
            $data['no'] = 1;
            return view('report.okp',$data);
            // $pdf = PDF::loadView('report.okp',$data);
            // return $pdf->stream('okp.pdf');
        }elseif ($pilih == "knpi") {
            $knpi = DB::table('knpi')->get();

            $data['knpi'] = $knpi;
           
            $data['no'] = 1;
            return view('report.knpi',$data);
           //  $pdf = PDF::loadView('report.knpi',$data);
           // return $pdf->stream('knpi.pdf');
        }elseif ($pilih == "pra") {
         $pra = DB::table('pramuka')->get();

        $data['pra'] = $pra;
        $data['no'] = 1;
        return view('report.pramu',$data);
       //  $pdf = PDF::loadView('report.pramu',$data)->setOrientation('landscape');
       // return $pdf->stream('kepramukaan.pdf');
        }
        elseif ($pilih == "sp") {
               $sar = DB::table('sarjana')->get();

        $data['sar'] = $sar;
       
        $data['no'] = 1;
        return view('report.sarjana',$data);
       //  $pdf = PDF::loadView('report.sarjana',$data);
       // return $pdf->stream('sarjana_penggerak.pdf');
   }
}
    
}
