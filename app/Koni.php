<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Koni extends Model
{
    protected $table = 'konis';
     protected $fillable = ['tingkat','nama','alamat','kota_kab',
	    					'no_telp'
    					  ];
}
