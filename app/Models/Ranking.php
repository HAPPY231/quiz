<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ranking extends Model
{

    protected $table = 'ranking';
    public $timestamps = false;
    protected $fillable = [
        'name', 'points',
    ];
    public $check =false;
}
