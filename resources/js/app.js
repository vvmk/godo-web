import Vue from 'vue';
import axios from 'axios';

import BoardShow from './views/BoardShow';

import HeroNav from './components/HeroNav';


window.Vue =  Vue;
window.axios = axios;

Vue.directive('autofocus', {
    inserted: (el, shouldAutofocus) => {
        if (shouldAutofocus) el.focus();
    },
});

new Vue({
    el: '#app',

    components: {
        'board-show': BoardShow,
        'hero-nav': HeroNav,
    },
});

