<?php

namespace App\Models;

use App\Models\proImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    protected $gurded = [];
    protected $with = ['proImage'];
    use HasFactory;

    public function proImage(){
        return $this->hasOne(proImage::class, 'id', 'proImage_id');
    }
}
