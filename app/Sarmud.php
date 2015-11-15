<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sarmud extends Model
{
    protected $table = 'sarpras_muda';
     protected $fillable = ['nama','alamat','kota_kab',
	    					'kondisi','kategori','status_pemilik','kapasitas'
    					  ];
}
