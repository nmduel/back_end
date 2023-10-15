<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function() {
    Route::prefix('slider')->group(function(){
        Route::get('/', [
            'as' => 'sliders.index',
            'uses' => 'AdminSliderController@index',
            // 'middleware' => 'can:slider-list'
        ]);

        Route::get('/create', [
            'as' => 'sliders.create',
            'uses' => 'AdminSliderController@create',
            // 'middleware' => 'can:slider-add'
        ]);

        Route::post('/store', [
            'as' => 'sliders.store',
            'uses' => 'AdminSliderController@store'
        ]);

        Route::get('/edit/{id}', [
            'as' => 'sliders.edit',
            'uses' => 'AdminSliderController@edit',
            // 'middleware' => 'can:slider-edit,id'
        ]);

        Route::post('/update/{id}', [
            'as' => 'sliders.update',
            'uses' => 'AdminSliderController@update'
        ]);

        Route::get('/delete/{id}', [
            'as' => 'sliders.delete',
            'uses' => 'AdminSliderController@delete',
            // 'middleware' => 'can:slider-delete'
        ]);
    });
});