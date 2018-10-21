<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use \App\Board;
use \App\User;

class Todo extends Model
{
    protected $fillable = [
        'description',
        'completed',
    ];

    public function board() {
        return $this->belongsTo(Board::class);
    }

    public function creator() {
        return $this->belongsTo(User::class);
    }
}
