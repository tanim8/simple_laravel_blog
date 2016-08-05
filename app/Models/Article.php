<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
	 protected $fillable=['title', 'description','image','created_by','updated_by'];
    protected $table = 'articles';
}
