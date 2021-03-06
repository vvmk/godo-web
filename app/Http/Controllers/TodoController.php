<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Todo;
use App\Board;

class TodoController extends Controller
{

    public function __construct() {
        /* $this->middleware('auth'); */
        // Above line will protect them all, I just don't want to forget how to do this again.
        $this->middleware('auth', ['only' => ['store', 'update', 'destroy']]);
    }

    public function store(Board $board)
    {
        $attributes = request()->validate(['description' => 'required']);

        return $board->addTodo($attributes);
    }

    public function update(Request $request, Todo $todo)
    {
        $method = request()->completed ? 'complete' : 'incomplete';

        // wooooooahhhhhh
        $todo->$method();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Todo  $todo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Todo $todo)
    {
        $todo->delete();

        return $todo->id;
    }
}
