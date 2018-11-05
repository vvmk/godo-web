<?php

namespace App\Http\Controllers;

use App\Todo;
use Illuminate\Http\Request;
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
        $board->addTodo([
            'description' => request('description'),
            'user_id' => auth()->id(),
        ]);

        return back();
    }

    public function update(Request $request, Todo $todo)
    {
        $todo->update([
            'completed' => request()->has('completed')
        ]);

        return back();
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
