<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
   /**
    * Database tabel gebruikt door de model
    *
    * @var string
    */

   protected $table = 'gallery';

    public function images(){
        return $this->hasMany('App\Http\Models\Image');
    }
}