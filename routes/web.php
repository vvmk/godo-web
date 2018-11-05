<?php

Auth::routes();

Route::get('/', 'HomeController@welcome');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/boards', 'BoardController@index');
Route::get('/boards/{name}', 'BoardController@show');
Route::post('/boards/{name}/todos', 'TodoController@create');

Route::get('/users/{id}', 'HomeController@show')->name('profile');

Route::patch('/todos/{todo}', 'TodoController@update');

