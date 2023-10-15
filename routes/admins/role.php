<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function() {
    Route::prefix('roles')->group(function(){
        Route::get('/', [
            'as' => 'roles.index',
            'uses' => 'AdminRoleController@index',
        ]);

        Route::get('/create', [
            'as' => 'roles.create',
            'uses' => 'AdminRoleController@create',
            'middleware' => 'can:role-add'
        ]);

        Route::post('/store', [
            'as' => 'roles.store',
            'uses' => 'AdminRoleController@store'
        ]);

        Route::get('/edit/{id}', [
            'as' => 'roles.edit',
            'uses' => 'AdminRoleController@edit',
            'middleware' => 'can:role-edit,id'
        ]);

        Route::post('/update/{id}', [
            'as' => 'roles.update',
            'uses' => 'AdminRoleController@update'
        ]);

        Route::get('/delete/{id}', [
            'as' => 'roles.delete',
            'uses' => 'AdminRoleController@delete',
            'middleware' => 'can:role-delete'
        ]);
    });
});