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
