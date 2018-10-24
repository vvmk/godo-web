@extends('layout.master')
@section('content')
<div class="content">
    <h1>
        {{ $board->name }}
    </h1>
        <ul>
            @foreach($todos as $t)
                <li>{{ $t }}</li>
            @endforeach
        </ul>
</div>

@endsection
