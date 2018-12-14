<?php

Auth::routes();

Route::get('/', 'HomeController@dashboard');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users/{id}', 'HomeController@show')->name('profile');

Route::get('/boards', 'BoardController@index');
Route::get('/boards/{name}', 'BoardController@show');
Route::post('/boards', 'BoardController@store');
Route::delete('/boards', 'BoardController@destroy');
Route::post('/boards/{board}/cleanup', 'BoardController@cleanup');

Route::post('/boards/{board}/todos', 'TodoController@store');
Route::patch('/todos/{todo}', 'TodoController@update');
Route::delete('/todos/{todo}', 'TodoController@destroy');


