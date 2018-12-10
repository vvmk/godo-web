<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use App\User;
use App\Todo;

class Board extends Model
{
    protected $fillable = [
        'name',
        'user_id',
    ];

    public function path() {
        return '/boards/' . $this->name;
    }

    public function creator() {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function todos() {
        return $this->hasMany(Todo::class)->sortByDesc('created_at');
    }

    public function addTodo($attributes) {
        return $this->todos()->create([
            'description' => $attributes['description'],
            'user_id' => auth()->id(),
        ]);
    }
}
