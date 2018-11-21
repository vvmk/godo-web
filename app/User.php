<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

use \App\Board;
use \App\Todo;

class User extends Authenticatable
{
    use Notifiable;

    protected $casts =[
        'prefs' => 'array',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function path() {
        return '/users/' . $this->id;
    }

    public function boards() {
        return $this->hasMany(Board::class);
    }

    public function todos() {
        return $this->hasMany(Todo::class);
    }

    public function pref($name) {
        return $this->prefs[$name];
    }
}
