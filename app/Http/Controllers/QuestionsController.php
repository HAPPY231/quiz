<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\questions;


class QuestionsController extends Controller
{
    public function questions(){

        return view('questions',['dad' =>questions::all()->shuffle()]);
    }
}
