@extends('layouts.master')

@section('content')
<div class="columns">
    <div class="column is-8 is-offset-2">
        <div class="box columns">

            <div class="column is-three-fifths">
                <h1 class="title is-2">
                    Glad to have you.
                </h1>
                <h3 class="subtitle is-3">
                    Just one thing before you get started.
                </h3>
                <ul>
                    <li class="is-size-3">
                        <span class="icon has-text-primary">
                            <i class="fas fa-angle-right"></i>
                        </span>
                        Register
                    </li>
                    <li class="is-size-5">
                        <span class="icon">
                            <i class="far fa-square"></i>
                        </span>
                        CLI
                    </li>
                </ul>

                <div class="section">
                    <ol class="is-size-6">
                        <li>Make the register request, show errors if any. </li>
                        <li>If it works, move to the next step, show the 'register' item with a green fa-check and muted text saying completed/done/whatever (like a checked off todo).</li>
                        <li>now &gt; Confirm or &gt; CLI on the left, on the right show info and download link for the CLI, or GitHub repo</li>
                        <li>Something to keep them occupied... 'while you wait for the confirmation email'</li>
                    </p>
                </div>
            </div>

            <div class="column is-two-fifths">

                <form method="POST" action="{{ route('register') }}">
                    @csrf

                    <div class="field">
                        <label class="label" for="name">Name</label>
                        <p class="control has-icons-left">
                        <input class="input{{ $errors->has('name') ? ' is-danger' : '' }}"
                               id="name"
                               type="text"
                               name="name"
                               value="{{ old('name') }}"
                               placeholder="First, last, fake...just don't forget it"
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
                        <label class="label" for="email">Email</label>
                        <p class="control has-icons-left">
                        <input class="input{{ $errors->has('email') ? ' is-danger' : '' }}"
                               id="email"
                               type="email"
                               name="email"
                               value="{{ old('email') }}"
                               placeholder="exempli@gratia.com"
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
                        <label class="label" for="password">Password</label>
                        <p class="control has-icons-left">
                        <input class="input{{ $errors->has('password') ? ' is-danger' : '' }}"
                               id="password"
                               type="password"
                               name="password"
                               placeholder="At least 6 characters please"
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
                        <label class="label" for="password-confirm">Confirm Password</label>
                        <p class="control has-icons-left">
                        <input class="input"
                               id="password-confirm"
                               type="password"
                               name="password_confirmation"
                               placeholder="Is this necessary?"
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
</div>
@endsection
