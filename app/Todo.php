<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use \App\Board;
use \App\User;

class Todo extends Model
{
    protected $fillable = [
        'description',
        'user_id',
        'completed',
    ];

    public function board() {
        return $this->belongsTo(Board::class);
    }

    /*
     * The above board() function works as it is because the owning resource is
     * 'Board'. If you wanted to call it something like 'owner()', it 
     * becomes necessary to pass a foreign key to 'belongsTo()'...
     *
     *      return $this->belongsTo(Board::class, 'board_id');
     *
     * ...otherwise laravel will look for a foreign key
     * called 'owner_id'.
     */

    public function creator() {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function path() {
        return '/todos/' . $this->id;
    }
}
