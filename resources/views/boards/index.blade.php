@extends('layouts.master')
@section('content')
    <h3 class="subtitle is-3">All Boards</h3>
    <div class="columns">
        <div class="column is-3">
            @foreach ($boards as $board)

                <div style="margin-top: 1rem;" class="card">

                    <div class="card-content">

                        <a class="is-link subtitle is-3 has-text-primary" href="{{ $board->path() }}">{{ $board->name }}</a>

                    </div>

                    <footer class="card-footer">

                        <p class="card-footer-item">
                            <span class="icon">
                                <i class="far fa-star"></i>
                            </span>
                        </p>

                        <p class="card-footer-item">
                            <span class="icon">
                                <i class="fas fa-list-ul"></i>&nbsp;<strong>{{ count($board->todos) }}</strong>
                            </span>
                        </p>

                    </footer>

                </div>

            @endforeach
        </div>

        <div class="column is-8">

        </div>

    </div>
</div>
@endsection
