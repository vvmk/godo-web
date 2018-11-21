import Vue from 'vue';
import axios from 'axios';
import HeroNav from './components/HeroNav';

import TodoItem from './components/TodoItem';

window.Vue =  Vue;
window.axios = axios;

Vue.directive('autofocus', {
    inserted: (el) => {
        el.focus();
    },
});

new Vue({
    el: '#app',

    data: {
        showTimestamp: false,
        showBlame: false,
    },

    components: {
        'hero-nav': HeroNav,
        'todo-item': TodoItem,
    },

});

