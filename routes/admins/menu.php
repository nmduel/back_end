<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function() {
    Route::prefix('menus')->group(function(){
        Route::get('/', [
            'as' => 'menus.index',
            'uses' => 'AdminMenuController@index',
            'middleware' => 'can:menu-list'
        ]);

        Route::get('/create', [
            'as' => 'menus.create',
            'uses' => 'AdminMenuController@create',
            'middleware' => 'can:menu-add'
        ]);

        Route::post('/store', [
            'as' => 'menus.store',
            'uses' => 'AdminMenuController@store'
        ]);

        Route::get('/edit/{id}', [
            'as' => 'menus.edit',
            'uses' => 'AdminMenuController@edit',
            'middleware' => 'can:menu-edit'
        ]);

        Route::post('/update/{id}', [
            'as' => 'menus.update',
            'uses' => 'AdminMenuController@update'
        ]);

        Route::get('/delete/{id}', [
            'as' => 'menus.delete',
            'uses' => 'AdminMenuController@delete',
            'middleware' => 'can:menu-delete'
        ]);
    });
});