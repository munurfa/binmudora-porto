<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wasit extends Model
{
    protected $table = 'wasits';
     protected $fillable = ['cabang','jenis','kota_kab','nama',
	    					'tmp_lahir','tgl_lahir','alamat',
    						'jenis_kel','no_telp','foto'
    					  ];
}
