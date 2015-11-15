<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SOR extends Model
{
    protected $table = 'sarpras_ors';
     protected $fillable = ['nama','alamat','kota_kab',
	    					'kondisi','kategori','status_pemilik','kapasitas'
    					  ];
}
