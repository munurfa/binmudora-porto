<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelatih extends Model
{
    protected $table = 'pelatihs';
     protected $fillable = ['cabang','jenis','kota_kab','nama',
	    					'tmp_lahir','tgl_lahir','alamat',
    						'jenis_kel','no_telp','foto'
    					  ];
}
