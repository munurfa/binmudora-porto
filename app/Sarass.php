<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sarass extends Model
{
    protected $table = 'sarpras_asset';
     protected $fillable = ['nama','tahun','kondisi'];
}
