import Vue from 'vue';
import axios from 'axios';
import HeroNav from './components/HeroNav';

import TodoItem from './components/TodoItem';

window.Vue =  Vue;
window.axios = axios;

Vue.directive('autofocus', {
    inserted: (el, shouldAutofocus) => {
        if (shouldAutofocus) el.focus();
    },
});

new Vue({
    el: '#app',

    data: {
        showTimestamp: false,
        showBlame: false,
        todoField: '',
    },

    components: {
        'hero-nav': HeroNav,
        'todo-item': TodoItem,
    },

    methods: {
        postTodo(board) {
            if (this.todoField) {
                axios.post(`/boards/${board}/todos`, { description: this.todoField })
                    .then(response => {
                        this.todos.push(response);

                        this.todoField = '';
                    })
                    .catch(error => console.log(error));
            }
        }
    },
});

