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



    public function getMudaEx($pilih)
    {
      if ($pilih == "okp") {
        $okp = DB::table('okp')->get();
        $no = 1;
        ob_end_clean();
        ob_start();
               
                Excel::create('Report OKP', function($excel) use($okp,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($okp,$no)  {

                    $sheet->loadView('excel.okp')->with('okp',$okp)->with('no',$no);
                });
          
            })->export('xls');
      } elseif($pilih == "knpi"){
        $knpi = DB::table('knpi')->get();
        $no = 1;
                ob_end_clean();
        ob_start();
                Excel::create('Report KNPI', function($excel) use($knpi,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($knpi,$no)  {

                    $sheet->loadView('excel.knpi')->with('knpi',$knpi)->with('no',$no);
                });
          
        })->export('xls');
      }elseif($pilih == "pra"){

        $pra = DB::table('pramuka')->get();
        $no = 1;
                ob_end_clean();
        ob_start();
                Excel::create('Report Kepramukaan', function($excel) use($pra,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($pra,$no)  {

                    $sheet->loadView('excel.pra')->with('pra',$pra)->with('no',$no);
                });
          
        })->export('xls');

      }elseif($pilih == "sp"){

        $sar = DB::table('sarjana')->get();
        $no = 1;
                ob_end_clean();
        ob_start();
                Excel::create('Report Sarjana Penggerak', function($excel) use($sar,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($sar,$no)  {

                    $sheet->loadView('excel.sarjana')->with('sar',$sar)->with('no',$no);
                });
          
        })->export('xls');
      }
      
    }

    public function getSaranaEx($pilih)
    {
      if ($pilih == "sarpras_muda") {
        $sarmud = DB::table('sarpras_muda')->get();
        $no = 1;
                 ob_end_clean();
        ob_start();
                Excel::create('Report Sarana Kepemudaan', function($excel) use($sarmud,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($sarmud,$no)  {

                    $sheet->loadView('excel.sarmud')->with('sarmud',$sarmud)->with('no',$no);
                });
          
            })->export('xls');
      } elseif($pilih == "sarpras_ors"){
        $sor = DB::table('sarpras_ors')->get();
        $no = 1;
                 ob_end_clean();
        ob_start();
                Excel::create('Report Sarana Keolahragaan', function($excel) use($sor,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($sor,$no)  {

                    $sheet->loadView('excel.sor')->with('sor',$sor)->with('no',$no);
                });
          
            })->export('xls');

      }elseif($pilih == "sarpras_public"){
        $sarpub = DB::table('sarpras_public')->get();
        $no = 1;
                 ob_end_clean();
        ob_start();
                Excel::create('Report Sarana Public', function($excel) use($sarpub,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($sarpub,$no)  {

                    $sheet->loadView('excel.sarpub')->with('sarpub',$sarpub)->with('no',$no);
                });
          
            })->export('xls');

      }elseif($pilih == "sarpras_asset"){
$saras = DB::table('sarpras_asset')->get();
        $no = 1;
                 ob_end_clean();
        ob_start();
                Excel::create('Report Sarana Asset', function($excel) use($saras,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($saras,$no)  {

                    $sheet->loadView('excel.saras')->with('saras',$saras)->with('no',$no);
                });
          
            })->export('xls');

      }


    }
public function getKontingen($id)
    {
       $kon_st = DB::table('kontingen')->where('kontingen.id_event','=',$id)->get();
        $no = 1;
        ob_end_clean();
        ob_start();
                Excel::create('Report Kontingen', function($excel) use($kon_st,$no)  {
                  $excel->sheet('New sheet', function($sheet)use($kon_st,$no)  {

                    $sheet->loadView('excel.kontingen')->with('kon_st',$kon_st)->with('no',$no);
                });
          
            })->export('xls');
    }
}
