@extends('layouts.master')

@section('content')
<div class="box">

    <div class="content">

        @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
        @endif

        You are logged in! <br><br>
        Dashboard coming soon.
    </div>

</div>
@endsection
