const mix = require('laravel-mix');

mix.js('resources/js/app.js', 'public/js')
   .extract([
      'vue',
      'axios',
      'bulma',
   ])
   .sass('resources/sass/app.scss', 'public/css')
   .browserSync({
      proxy: 'godo-web.test'
   })
   .version();
