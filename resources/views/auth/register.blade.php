@extends('layouts.master')

@section('content')
<div class="columns">
    <div class="column is-4 is-offset-4">
        <div class="label is-medium">{{ __('Register') }}</div>
        <div class="box">

            <form method="POST" action="{{ route('register') }}">
                @csrf

                <div class="field">
                    <p class="control has-icons-left">
                    <input class="input{{ $errors->has('name') ? ' is-danger' : '' }}"
                        id="name"
                        type="text"
                        name="name"
                        value="{{ old('name') }}"
                        placeholder="Name"
                        required
                        autofocus
                    />
                    <span class="icon is-small is-left">
                        <i class="fas fa-user"></i>
                    </span>

                    @if ($errors->has('name'))
                        <span class="has-text-danger" role="alert">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                    </p>
                </div>

                <div class="field">
                    <p class="control has-icons-left">
                    <input class="input{{ $errors->has('email') ? ' is-danger' : '' }}"
                           id="email"
                           type="email"
                           name="email"
                           value="{{ old('email') }}"
                           placeholder="Email"
                           required
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
                        name="password"
                        placeholder="Password"
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

                    <p class="control has-icons-left">
                        <input class="input"
                            id="password-confirm"
                            type="password"
                            name="password_confirmation"
                            placeholder="Confirm Password"
                            required
                        />
                        <span class="icon is-small is-left">
                            <i class="fas fa-check-double"></i>
                        </span>

                    </p>
                </div>

                <div class="field">
                    <div class="control">
                        <button type="submit" class="button is-success is-fullwidth">
                            {{ __('Register') }}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
