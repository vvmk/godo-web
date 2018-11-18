@extends('layouts.master')
@section('content')

<h3 class="subtitle is-3">
    {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
</h3>

<form class="box" method="POST" action="/boards/{{ $board->id }}/todos">
    @csrf

    <div class="field">
        <label class="label" for="description">New Todo</label>

        <div class="control">
            <input class="input" type="text" name="description" placeholder="New Todo">
        </div>
    </div>

    <div class="field">
        <div class="control">
            <button class="button is-link">Add Todo</button>
        </div>
    </div>

    @include('errors')
</form>

@foreach($board->todos as $todo)

<div class="level box">

    <div class="level-left">
        <div class="level-item">

            <todo-item raw="{{ $todo }}" action="{{ $todo->path() }}"></todo-item>

        </div>
    </div>

    <div class="level-right">
        <div class="level-item is-size-7">
            <a class="level-item" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a>
            &nbsp;added&nbsp;
            {{ $todo->created_at->diffForHumans() }}
        </div>
    </div>

</div>

@endforeach

@endsection
