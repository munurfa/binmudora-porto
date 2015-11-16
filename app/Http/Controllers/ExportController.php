<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Excel;
use DB;

class ExportController extends Controller
{
        public function __construct()
    {
        $this->middleware('auth');
    }
    public function getOREx($pilih,$cabang)
    {
     
        if($pilih == "atlit"){
            if ($cabang != "000") {
               $atlit_pres = DB::table('atlits')
                    ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')
                    ->where('id_cabang',$cabang)->get();
               }else{
                $atlit_pres = DB::table('atlits')
                        ->join('cabangs','cabangs.id_cabang','=','atlits.cabang')->get();
               }
            
                     
        $no = 1; 
            
        ob_end_clean();
ob_start();        
        Excel::create('Report Atlit', function($excel) use($atlit_pres,$no)  {
        	$excel->sheet('New sheet', function($sheet)use($atlit_pres,$no)  {

		        $sheet->loadView('excel.atlit')->with('atlit_pres',$atlit_pres)->with('no',$no);
		    });
  
		})->export('xls');
         }elseif ($pilih == "pelatih") {

              if ($cabang != "000") {
              $pelatih_se = DB::table('pelatihs')
                    ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')
                    ->where('id_cabang',$cabang)->get();
            }else{
                $pelatih_se = DB::table('pelatihs')
                    ->join('cabangs','cabangs.id_cabang','=','pelatihs.cabang')->get();
            }
            
                     
        $no = 1; 
            
        ob_end_clean();
ob_start();        
        Excel::create('Report Pelatih', function($excel) use($pelatih_se,$no)  {
          $excel->sheet('New sheet', function($sheet)use($pelatih_se,$no)  {

            $sheet->loadView('excel.pelatih')->with('pelatih_se',$pelatih_se)->with('no',$no);
        });
  
    })->export('xls');

          }elseif ($pilih == "wasit") {
         
               if ($cabang != "000") {
         $wasit_se= DB::table('wasits')
                         ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')
                    ->where('id_cabang',$cabang)->get();
            }else{ 
             $wasit_se= DB::table('wasits')
                         ->join('cabangs','cabangs.id_cabang','=','wasits.cabang')->get();
            }
            $no = 1; 
            
                ob_end_clean();
        ob_start();        
                Excel::create('Report Wasit', function($excel) use($wasit_se,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($wasit_se,$no)  {

                    $sheet->loadView('excel.wasit')->with('wasit_se',$wasit_se)->with('no',$no);
                });
          
            })->export('xls');

          }
    }

}
