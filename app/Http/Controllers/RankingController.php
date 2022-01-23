<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Request;
use App\Models\Ranking;


class RankingController extends Controller
{
    public function ranking(){

        $odpowiedzi = Request::all();
        $punkty = 0;
        for($i=1;$i<=20;$i++){
            $odpuzy[$i] = $odpowiedzi['m'.$i];
            $poprawneodp[$i] = $odpowiedzi['Poprodp'.$i];

            if($odpuzy[$i] === $poprawneodp[$i]){
                $punkty = $punkty + 1;
            }
        }
        $ranking= new Ranking;
        $ranking->name=Auth::user()->name;
        $ranking->points=$punkty;
        $ranking->save();

        return view('ranking',['punkty'=>$punkty,'ranking'=>Ranking::all()->sortByDesc('points')]);
    }
}
