@extends('layouts.master')
@section('content')

<div class="content">
    <div class="panel">
        <div class="panel-heading">
            {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
        </div>
        @foreach($todos as $todo)
            <a class="panel-block">
                <form method="POST" action="/todos/{{ $todo->id }}">
                    @method('PATCH')
                    @csrf
                    <label class="checkbox" for="completed">
                        <input type="checkbox" name="completed">
                        {{ $todo->description }}
                    </label>
                </form>

                <a class="" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a>added {{ $todo->created_at->diffForHumans() }}
            </a>
        @endforeach
    </div>
</div>

@endsection
