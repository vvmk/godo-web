@extends('layouts.master')
@section('content')

<h3 class="subtitle is-3">
    {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
</h3>

<div class="columns">

    <div class="column is-2 has-background-light">
    </div>

    <div class="column is-8">
        @foreach($board->todos as $todo)

        <div class="level">
            <div class="level-left">
                <div class="level-item">

                    <todo-item raw="{{ $todo }}" action="{{ $todo->path() }}"></todo-item>

                </div>
            </div>

            <div class="level-right">
                <div class="level-item">
                    <a class="level-item" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a>&nbsp;added {{ $todo->created_at->diffForHumans() }}
                </div>
            </div>
        </div>

        @endforeach
    </div>
</div>

@endsection
