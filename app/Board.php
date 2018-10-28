<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use \App\User;
use \App\Todo;

class Board extends Model
{
    protected $fillable = [
        "name",
    ];

    public function path() {
        return '/boards/' . $this->name;
    }

    public function creator() {
        return $this->belongsTo(User::class)->first();
    }

    public function todos() {
        return $this->hasMany(Todo::class)->get();
    }
}
