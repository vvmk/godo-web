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
        $this->middleware('auth', ['only' => ['store', 'update', 'destroy']]);;
    }

    public function store(Board $board)
    {
        $attributes = request()->validate(['description' => 'required']);

        $board->addTodo($attributes);

        return back();
    }

    public function update(Request $request, Todo $todo)
    {
        $todo->update([
            'completed' => request()->completed,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Todo  $todo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Todo $todo)
    {
        //
    }
}
