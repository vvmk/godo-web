<nav class="navbar is-dark">
  <div class="container">
    <div class="navbar-brand">
      <a class="navbar-item" href="{{ url('/') }}">
        <img src="logo.png" alt="godo">
      </a>
    </div>

    <span role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbar-default">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </span>

    <div id="navbar-default" class="navbar-menu">
      <div class="navbar-end">

        <span class="navbar-item">
          <a class="is-light is-inverted" href="https://github.com/vvmk/godo-web" target="_blank" rel="nofollow">
            <span class="icon has-text-light">
              <i class="fab fa-github"></i>
            </span>
          </a>
        </span>

        <a class="navbar-item" href="/boards">
          Boards
        </a>

        @guest
        <a class="navbar-item" href="{{ route('login') }}">{{ __('Login') }}</a>

        @if (Route::has('register'))
        <a class="navbar-item" href="{{ route('register') }}">{{ __('Register') }}</a>
        @endif

        @else
        <div :class="{'navbar-item': true, 'has-dropdown': true, 'is-active': dropdownActive}">

          <a class="navbar-link"
             aria-haspopup="true"
             aria-controls="dropdown-menu"
             @click="dropdownActive = !dropdownActive">

            {{ Auth::user()->name }}

          </a>

          <div id="dropdown-menu" class="navbar-dropdown is-right">
            <a class="navbar-item" href="{{ Auth::user()->path() }}">Dashboard</a>

            <hr class="navbar-divider">

            <a class="navbar-item" href="{{ route('logout') }}"
                                   onClick="event.preventDefault();
                                   document.getElementById('logout-form').submit();">

              {{ __('Logout') }}
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
            </form>

          </div>
        </div>
        @endguest
      </div>
    </div>
  </div>
</nav>

