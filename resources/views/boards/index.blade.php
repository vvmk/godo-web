@extends('layouts.master')
@section('content')
<div class="columns is-multiline">

    <form class="column is-12" action="/boards" method="POST">
        @csrf

        <div class="box">
            <div class="field">
                <label class="label" for="name">New Board</label>

                <div class="control">
                    <input class="input" type="text" name="name" placeholder="New Board">
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <button class="button is-link">Add Board</button>
                </div>
            </div>
        </div>

    </form>

    @foreach ($boards as $board)

    <div class="column is-one-third">

        <div class="box">

            <div class="level">

                <p class="level-left">
                    <a class="item is-link subtitle is-3 has-text-primary" href="{{ $board->path() }}">{{ $board->name }}</a>
                </p>

                <p class="level-right">
                    <span class="level-item icon">
                        <i class="far fa-star"></i>
                    </span>

                    <span class="level-item icon">
                        <i class="fas fa-list-ul"></i>&nbsp;<strong>{{ count($board->todos) }}</strong>
                    </span>
                </p>

            </div>

        </div>
    </div>
    @endforeach
</div>

@endsection
