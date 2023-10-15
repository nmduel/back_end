<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/login', [AdminController::class, 'loginAdmin']);
Route::post('/login', [AdminController::class, 'postLoginAdmin']);

Route::get('/', function(){
    return view('homepage');
}); 

Route::prefix('admin')->group(function() {
    Route::get('/logout', [AdminController::class, 'logout']);

    Route::get('/', function(){
        return view('homepage');
    }); 
});
