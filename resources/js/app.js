import Vue from 'vue';
import axios from 'axios';

import BoardShow from './views/BoardShow';

import HeroNav from './components/HeroNav';


window.Vue =  Vue;
window.axios = axios;

window.deleteLastWord = (text) => {
    const words = text.split(' ');
    const end = words[words.length - 1] ? -1 : -2;

    const newText = words.slice(0, end).join(' ');

    return newText ? newText + ' ' : '';
};

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

