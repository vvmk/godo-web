@extends('layouts.master')
@section('content')
<section>
    <div class="container">
        <div class="columns">
            <div class="column is-three-quarters">
                <div class="panel">
                    <p class="panel-heading">My Boards</p>
                    @foreach ($boards as $board)
                        <div class="panel-block">
                            <a class="is-size-4" href="{{ $board->path() }}">{{ $board->name }}</a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
