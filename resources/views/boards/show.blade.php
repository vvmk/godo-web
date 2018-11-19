@extends('layouts.master')
@section('content')

<h3 class="subtitle is-3">
    {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
</h3>

<div class="box">
    <form method="POST" action="/boards/{{ $board->id }}/todos">
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

    <div class="section">

        <div class="level">

            <div class="level-left">
            </div>

            <div class="level-right">
                <div class="level-item">
                    <button :class="{'button': true, 'icon': true, 'is-link': showBlame}"
                        @click="showBlame = !showBlame">
                        <i class="fas fa-user"></i>
                    </button>
                </div>

                <div class="level-item">
                    <button :class="{'button': true, 'icon': true, 'is-link': showTimestamp}"
                        @click="showTimestamp = !showTimestamp">
                        <i class="fas fa-clock"></i>
                    </button>
                </div>
            </div>
        </div>

        @foreach($board->todos as $todo)

        <div class="level">

            <div class="level-left">
                <div class="level-item">

                    <todo-item raw="{{ $todo }}" action="{{ $todo->path() }}"></todo-item>

                </div>
            </div>

            <div class="level-right">
                <div v-if="showBlame || showTimestamp" class="level-item is-size-7">
                    <a v-if="showBlame" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a>
                    <span v-if="showBlame && showTimestamp">&nbsp;added&nbsp;</span>
                    <span v-if="showTimestamp">{{ $todo->created_at->diffForHumans() }}<span>
                </div>
            </div>

        </div>

        @endforeach
    </div>
</div>
@endsection
