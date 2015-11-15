<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventAtlit extends Model
{
    protected $table = 'event_atlit';
     public function atlit()
    {
        return $this->belongsTo('App\Atlit');
    }
}
