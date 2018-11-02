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
        return $this->belongsTo(User::class, 'user_id');
    }

    public function todos() {
        return $this->hasMany(Todo::class);
    }

    public function addTodo($todo) {
        $this->todos()->create($todo);
    }
}
