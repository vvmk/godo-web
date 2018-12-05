<template>
    <div>
        <button class="button has-text-danger icon"
                v-if="EditMode"
                @click="deleteTodo">

            <i class="fas fa-trash-alt"></i>
        </button>
        <button :class='{ "button": true, "has-text-link": !editing, "icon": true, "is-link": editing }'
               v-if="EditMode"
               @click="toggleEditing">

            <i class="fas fa-edit"></i>
        </button>

        <label v-if="!editing" class="checkbox" :for="name">
            <input v-model="checked" type="checkbox" :id="name" @change="toggle($event.target.value)">
            <span :class="{ 'has-text-left': true, 'strike': completed}">{{ description }}</span>
        </label>

        <div class="control">
            <input class="input is-small is-expanded"
                type="text"
                v-if="EditMode && editing"
                v-model="editDescription"
                @keydown.enter="editTodo"
                @keydown.esc="editing = false"
                autofocus
                v-autofocus="true"
                @focus="$event.target.setSelectionRange(0, editDescription.length)"
                />
        </div>
    </div>
</template>

<script>
export default {
    props: [
        'todo',
        'action',
        'EditMode',
    ],

    data() {
        return {
            completed: false,
            editing: false,
            editDescription: '',
        };
    },

    mounted() {
        this.checked = !!this.todo.completed;
    },

    watch: {
        EditMode() {
            this.editing = false;
        },

        completed() {
            console.log('completed changed: ', this.completed);
        }
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
            console.log('edited: ', this.editDescription);

            this.editing = false;
        },

        deleteTodo() {
            axios.delete(this.action)
                .then(response => {
                    let id = response.data;

                    this.$emit('todo-deleted', id);
                })
                .catch(error => console.log(error));
        },

        toggleEditing() {
            this.editing = !this.editing;
            this.editDescription = this.description;
        },
    },
};
</script>
