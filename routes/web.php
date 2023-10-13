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


Route::get('/', [AdminController::class, 'loginAdmin']);
Route::post('/', [AdminController::class, 'postLoginAdmin']);
Route::get('/logout', [AdminController::class, 'logout']);

Route::get('/homepage', function(){
    return view('homepage');
}); 

// Route::prefix('admin')->group(function() {
//     Route::get('/', [
//         'as' => 'admin.login',
//         'uses' => 'AdminController@loginAdmin'
//     ]);

//     Route::get('/', [
//         'as' => 'admin.postLoginAdmin',
//         'uses' => 'AdminController@postLoginAdmin'
//     ]);

//     Route::get('/logout', [
//         'as' => 'admin.logout',
//         'uses' => 'AdminController@logout'
//     ]);

// });