<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductModel extends Model
{
    use SoftDeletes;

    protected $table = 'model';
    protected $dates = ['deleted_at'];

    public function brand() {
        return $this->belongsTo('App\Brand', 'brand_id');
    }

}