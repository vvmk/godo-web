<?php

namespace App\Http\Controllers;

use App\Board;
use Illuminate\Http\Request;

class BoardController extends Controller
{

    public function __construct() {
        $this->middleware('auth', ['only' => ['store', 'update', 'destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $boards = Board::latest()->get();

        return view('boards.index', compact('boards'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $board = Board::create([
            'user_id' => auth()->id(),
            'name' => $request->name,
        ]);

        // TODO: this feels right, but it tastes like a dirty penny
        return view('boards.show', compact('board'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Board  $board
     * @return \Illuminate\Http\Response
     */
    public function show(string $name)
    {
        $board = Board::where('name', $name)->first();

        return view('boards.show', compact('board'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Board  $board
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Board $board)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Board  $board
     * @return \Illuminate\Http\Response
     */
    public function destroy(Board $board)
    {
        //
    }

    /**
     * Remove all todos from this board marked 'completed'
     *
     * @param \App\Board $board
     * @return int[] of ids for the client to remove
     */
    public function cleanup(Board $board) {
        $completed = $board->todos()->where('completed', '1')->get(['id']);
        dd($completed);
    }
}
