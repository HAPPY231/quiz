<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class KontoController extends Controller
{
   public function konto(){
       return view('konto');
   }
}
