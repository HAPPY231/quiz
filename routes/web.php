<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\KontoController;
use App\Http\Controllers\QuestionsController;
use App\Http\Controllers\RankingController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});


Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/users/list', [UserController::class, 'index'])->middleware('auth');
Route::get('/user', [KontoController::class, 'konto'])->middleware('auth');
Route::get('/ranking/pytania', [QuestionsController::class, 'questions'])->middleware('auth');
Route::get('/ranking', [RankingController::class, 'ranking'])->middleware('auth');
