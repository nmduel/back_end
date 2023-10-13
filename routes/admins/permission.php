<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function() {
    Route::prefix('permissions')->group(function() {
        Route::get('/create', [
            'as' => 'permissions.create',
            'uses' => 'AdminPermissionController@createPermissions'
        ]);

        Route::post('/store', [
            'as' => 'permissions.store',
            'uses' => 'AdminPermissionController@store'
        ]);
    });
});