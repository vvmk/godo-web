@extends('layouts.master')
@section('content')

<h3 class="subtitle is-3">
    {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
</h3>

<div class="box">
    <form @submit.prevent="postTodo({{ $board->id }})">
        @csrf

        <div class="field">
            <label v-show="false" class="label" for="description">&nbsp;</label>

            <div class="control">
                <input v-model="todoField" class="input" type="text" name="description" placeholder="New Todo" autofocus v-autofocus="{{ true }}" />
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
