<template>
    <div>
        <button class="button has-text-danger icon"
                v-if="editing"
                @click="deleteTodo">

            <i class="fas fa-trash-alt"></i>
        </button>
        <button class="button has-text-link icon"
                v-if="editing"
                @click="editTodo">

            <i class="fas fa-edit"></i>
        </button>

        <label class="checkbox" :for="name">
            <input v-model="checked" type="checkbox" :id="name" @change="toggle($event.target.value)">
            <span :class="{'strike': completed}">{{ description }}</span>
        </label>
    </div>
</template>

<script>
export default {
    props: [
        'todo',
        'action',
        'editing',
    ],

    data() {
        return {
            completed: false,
        };
    },

    mounted() {
        this.checked = !!this.todo.completed;
    },

    computed: {
        checked: {
            get() {
                return this.completed;
            },

            set(newVal) {
                this.completed = newVal;
            },
        },

        name() {
            return 'completed_' + this.todo.id;
        },

        description() {
            return this.todo.description;
        },
    },

    methods: {
        toggle(checked) {
            axios.patch(this.action, { completed: this.completed });
        },

        editTodo() {
            console.log('editing', this.todo.id);
        },

        deleteTodo() {
            axios.delete(this.action)
                .then(response => {
                    let id = response.data;

                    this.$emit('todo-deleted', id);
                })
                .catch(error => console.log(error));
        },
    },
};
</script>
