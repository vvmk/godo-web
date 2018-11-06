<section class="hero is-dark">
  <div class="hero-head">
    <nav class="navbar">
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
              <a class="is-light is-inverted" href="https://github.com/vvmk" target="_blank" rel="nofollow">
                <span class="icon">
                  <i class="fab fa-github"></i>
                </span>
              </a>
            </span>

            <a 
              href="/home">

              Home
            </a>

            <a class="navbar-item" href="/boards">
              Boards
            </a>

            @guest
            <a class="navbar-item" href="{{ route('login') }}">{{ __('Login') }}</a>

            @if (Route::has('register'))
            <a class="navbar-item" href="{{ route('register') }}">{{ __('Register') }}</a>
            @endif

            @else
            <div :class="{'navbar-item': true, 'is-active': dropdownActive}"
                                   @blur="dropdownActive = false">

              <div class="dropdown-trigger">
                <button class="button" aria-haspopup="true" aria-controls="dropdown-menu"
                  @click="dropdownActive = !dropdownActive">

                  <span> {{ Auth::user()->name }}</span>
                  <span class="icon is-small">
                    <i class="fas fa-angle-down" aria-hidden="true"></i>
                  </span>
                </button>
              </div>
              <div id="dropdown-menu" class="dropdown-menu" role="menu">
                <div class="dropdown-content">
                  <a class="dropdown-item" href="{{ Auth::user()->path() }}">Dashboard</a>

                  <hr class="dropdown-divider">

                  <a class="dropdown-item" href="{{ route('logout') }}"
                                           onClick="event.preventDefault();
                                           document.getElementById('logout-form').submit();">

                    {{ __('Logout') }}
                  </a>

                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                  </form>

                </div>
              </div>
            </div>
            @endguest
          </div>
        </div>
      </div>
    </nav>
  </div>

  <div class="hero-body">
    <div class="container has-text-left">
      <h1 class="title">
        //GODO:
      </h1>
      <h2 class="subtitle">
        CLI managed todo lists with a singe point of truth.
      </h2>
    </div>
  </div>

</section>
