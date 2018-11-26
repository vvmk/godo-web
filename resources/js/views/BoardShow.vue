<script>
import TodoItem from '../components/TodoItem';

export default {
    props: [
        'InitTodos',
    ],

    data() {
        return {
            showTimestamp: false,
            showBlame: false,
            editing: false,
            todoField: '',
            todos: [],
        };
    },

    mounted() {
        this.todos.push(...this.InitTodos);
    },

    methods: {
        postTodo(action) {
            if (this.todoField) {
                axios.post(action, { description: this.todoField })
                    .then(response => {
                        this.todos.push(response.data);
                        this.todoField = '';
                    })
                    .catch(error => console.log(error));
            }
        },

        removeFromList(id) {
            // better to loop here only when deleting than building a map on mounted.
            for (let i = 0; i < this.todos.length; i++) {
                if (this.todos[i].id == id) {
                    return this.todos.splice(i, 1);
                }
            }
        },

        controlW() {
            this.todoField = deleteLastWord(this.todoField);
        },

        controlU() {
            this.todoField = '';
        },
    },

    components: {
        'todo-item': TodoItem,
    },

};
</script>
