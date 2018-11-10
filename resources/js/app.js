import Vue from 'vue';
import axios from 'axios';
import HeroNav from './components/HeroNav';

import TodoItem from './components/TodoItem';

window.Vue =  Vue;
window.axios = axios;

new Vue({
    el: '#app',

    data: {
    },

    components: {
        'hero-nav': HeroNav,
        'todo-item': TodoItem,
    },
});
