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
                                <h4>{{ $board->name }}</h4>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
