<template>
    <div>
        <label class="checkbox" :for="name">
            <input v-model="checked" type="checkbox" :id="name" @change="toggle($event.target.value)">
                {{ description }}
        </label>
    </div>
</template>

<script>
export default {
    props: [
        'todo',
        'action',
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
    },
};
</script>
