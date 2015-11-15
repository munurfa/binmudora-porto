<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Atlit extends Model
{
    protected $table = 'atlits';
    protected $fillable = ['cabang','jenis','kota_kab','nama',
	    					'tmp_lahir','tgl_lahir','alamat',
    						'jenis_kel','no_telp','tinggi_badan', 
    						'berat_badan','spesialis','potensial','status','tanggal_status','foto'
    					  ];
    public function prestasi()
    {
        return $this->hasMany('App\EventAtlit');
    }
}
