@extends('layouts.master')

@section('content')
<div class="columns">
    <div class="column is-4 is-offset-4">
        <div class="label is-medium">{{ __('Login') }}</div>
        <div class="box">
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="field">

                    <p class="control has-icons-left">
                        <input class="input{{ $errors->has('email') ? ' is-danger' : '' }}" 
                            id="email"
                            type="email"
                            name="email"
                            value="{{ old('email') }}"
                            placeholder="Email"
                            required
                            autofocus
                        />
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>

                        @if ($errors->has('email'))
                        <span class="has-text-danger" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                        @endif
                    </p>
                </div>

                <div class="field">
                    <p class="control has-icons-left">
                        <input class="input{{ $errors->has('password') ? ' is-danger' : '' }}"
                            id="password"
                            type="password"
                            placeholder="Password"
                            name="password"
                            required
                        />
                        <span class="icon is-small is-left">
                            <i class="fas fa-lock"></i>
                        </span>

                        @if ($errors->has('password'))
                        <span class="has-text-danger" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                        @endif

                    </p>
                </div>
                <div class="field">
                    <p class="control">
                        <input class="checkbox"
                            type="checkbox"
                            name="remember"
                            id="remember"
                            {{ old('remember') ? 'checked' : '' }}
                        />
                        <label class="checkbox" for="remember">
                            {{ __('Remember Me') }}
                        </label>
                    </p>
                </div>

                <div class="field is-grouped">
                    <div class="control">
                        <button class="button is-success"
                                type="submit">
                            {{ __('Login') }}
                        </button>
                    </div>
                    <div class="control">
                        <a class="button is-text" href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
