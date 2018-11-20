<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Godo Dashboard</title>
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    </head>
    <body>

        <div id="app">

            <hero-nav inline-template>
                @include('layouts.nav')
            </hero-nav>

            <section class="hero is-dark">
                <div class="hero-body">
                    <div class="container has-text-left">
                        <h1 class="title is-3">
                            //GODO:
                        </h1>
                        <h3 class="subtitle is-5">CLI managed todo lists with a singe point of truth.</h3>
                    </div>
                </div>
            </section>

            <section class="section">
                <main class="container">
                    @yield('content')
                </main>
            </section>

            @include('layouts.footer')

        </div>

        <script src="{{ mix('js/manifest.js') }}"></script>
        <script src="{{ mix('js/vendor.js') }}"></script>
        <script src="{{ mix('js/app.js') }}"></script>
    </body>
</html>
