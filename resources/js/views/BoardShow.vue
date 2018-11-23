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
        postTodo(board) {
            if (this.todoField) {
                axios.post(`/boards/${board}/todos`, { description: this.todoField })
                    .then(response => {
                        this.todos.push(response);

                        this.todoField = '';
                    })
                    .catch(error => console.log(error));
            }
        },
    },

    components: {
        'todo-item': TodoItem,
    },

};
</script>
