import Vue from 'vue';
import axios from 'axios';
import HeroNav from './components/HeroNav';
import BoardShow from './components/BoardShow';


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

