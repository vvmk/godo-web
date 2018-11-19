<?php

Auth::routes();

// TODO: landing page
Route::get('/', 'HomeController@index');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users/{id}', 'HomeController@show')->name('profile');

Route::get('/boards', 'BoardController@index');
Route::post('/boards', 'BoardController@store');
Route::get('/boards/{name}', 'BoardController@show');

Route::post('/boards/{board}/todos', 'TodoController@store');
Route::patch('/todos/{todo}', 'TodoController@update');


