@extends('layouts.master')
@section('content')

<div class="content">
    <div class="panel">
        <p class="panel-heading">
            {{ $board->name }}
        </p>
        @foreach($todos as $todo)
            <a class="panel-block">
                @if($todo->completed)
                    <i class="has-text-success fas fa-check" aria-hidden="true"></i>
                @else
                    <i class="far fa-square"></i>
                @endif
                <span>&nbsp;{{ $todo->description }}</span>

                <a class="" href="{{ $todo->creator->path() }}">{{ $todo->creator->name }}</a>added {{ $todo->created_at->diffForHumans() }}
            </a>
        @endforeach
    </div>
</div>

@endsection
