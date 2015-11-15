<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sarpub extends Model
{
    protected $table = 'sarpras_public';
     protected $fillable = ['nama','alamat','kota_kab',
	    					'kondisi','kategori','status_pemilik','kapasitas'
    					  ];
}
