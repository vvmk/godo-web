<?php

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/boards', 'BoardController@index');
Route::get('/boards/{name}', 'BoardController@show');

Route::get('/users/{id}', 'HomeController@show');
    
Route::put('/todos/{id}/complete', 'TodoController@complete');

