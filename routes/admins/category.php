<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function() {
    Route::prefix('categories')->group(function(){
        Route::get('/', [
            'as' => 'categories.index',
            'uses' => 'AdminCategoryController@index',
            'middleware' => 'can:category-list'
        ]);

        Route::get('/create', [
            'as' => 'categories.create',
            'uses' => 'AdminCategoryController@create',
            'middleware' => 'can:category-add'
        ]);

        Route::post('/store', [
            'as' => 'categories.store',
            'uses' => 'AdminCategoryController@store'
        ]);

        Route::get('/edit/{id}', [
            'as' => 'categories.edit',
            'uses' => 'AdminCategoryController@edit',
            'middleware' => 'can:category-edit,id'
        ]);

        Route::post('/update/{id}', [
            'as' => 'categories.update',
            'uses' => 'AdminCategoryController@update'
        ]);

        Route::get('/delete/{id}', [
            'as' => 'categories.delete',
            'uses' => 'AdminCategoryController@delete',
            'middleware' => 'can:category-delete'
        ]);
    });
});