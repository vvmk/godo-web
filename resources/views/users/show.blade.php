@extends('layouts.master')
@section('content')
<div class="container">
    <h1 class="subtitle is-2">{{ $user->name }}</h1>
    <div class="columns">
        <div class="column is-3">
            <aside class="is-medium menu">
                <p class="menu-label">First Level</p>
                <ul class="menu-list">
                    <li>Cat 1</li>
                    <li>Cat 2</li>
                    <li>Cat 3</li>
                    <p class="menu-label">Second Level</p>
                    <ul class="menu-list">
                        <li><span class="tag is-white is-medium">Lorem</span></li>
                        <li><span class="tag is-white is-medium">Ipsum</span></li>
                        <li><span class="tag is-white is-medium">Dolor</span></li>
                        <li><span class="tag is-white is-medium">Animi</span></li>
                        <li><span class="tag is-white is-medium">Eximi</span></li>
                    </ul>
                </ul>
            </aside>
        </div>

        <div class="column is-9">
            <div class="content is-medium">

                @foreach($user->boards as $board)
                <div class="box">

                    <h4 id="const" class="title is-3">{{ $board->name }}</h4>

                    <article class="message is-primary">
                        @foreach($board->todos as $todo)
                        <div class="message-body">
                            @if($todo->completed)
                                <i class="has-text-success fas fa-check" aria-hidden="true"></i>
                            @else
                                <i class="far fa-square"></i>
                            @endif

                            <span>&nbsp;{{ $todo->description }}</span>

                            <a class="" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a> added {{ $todo->created_at->diffForHumans() }}
                        </div>
                        @endforeach
                    </article>
                </div>
                @endforeach

            </div>
        </div>
    </div>
</div>
@endsection
