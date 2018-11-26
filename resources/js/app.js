import Vue from 'vue';
import axios from 'axios';

import BoardShow from './views/BoardShow';

import HeroNav from './components/HeroNav';


window.Vue =  Vue;
window.axios = axios;

window.deleteLastWord = (text) => {
    const words = text.replace(/\s+$/, '').split(' ');
    const newText = words.slice(0, -1).join(' ');

    return newText ? newText + ' ' : '';
};

Vue.directive('autofocus', {
    inserted: (el, shouldAutofocus) => {
        if (shouldAutofocus) el.focus();
    },
});

new Vue({
    el: '#app',

    data: {
        newBoardField: '',
    },

    components: {
        'board-show': BoardShow,
        'hero-nav': HeroNav,
    },

    methods: {
        controlW() {
            this.newBoardField = deleteLastWord(this.newBoardField);
        },

        controlU() {
            this.newBoardField = '';
        },
    },

});

