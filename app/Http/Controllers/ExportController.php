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
              

          }elseif ($pilih == "wasit") {
         

          }
    }

}
