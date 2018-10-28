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
                    <i class="fas fa-arrow-right" aria-hidden="true"></i>
                @endif
                <span>&nbsp;{{ $todo->description }}</span>
            </a>
        @endforeach
    </div>
</div>

@endsection
