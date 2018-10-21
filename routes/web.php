<?php

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/boards', 'BoardsController@index');
/* TODO: Slug paths */
/* Route::get('/boards/{slug?}', 'BoardsController@index'); */

