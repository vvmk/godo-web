<?php

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/board/{name}', 'BoardController@show');

