<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kompetisi extends Model
{
    protected $table = 'kompetisi';
     protected $fillable = ['nama','tgl_mulai','tgl_akhir',
	    					'level'
    					  ];
}
