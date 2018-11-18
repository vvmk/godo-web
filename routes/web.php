<?php

Auth::routes();

Route::get('/', 'HomeController@index');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/boards', 'BoardController@index');
Route::get('/boards/{name}', 'BoardController@show');

Route::post('/boards/{board}/todos', 'TodoController@store');

Route::get('/users/{id}', 'HomeController@show')->name('profile');

Route::patch('/todos/{todo}', 'TodoController@update');

