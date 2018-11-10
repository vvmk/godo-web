<template>
    <div>
        <label class="checkbox" :for="name">
            <input :checked="checked" type="checkbox" :name="name" @change="toggle($event.target.value)">
                {{ description }}
        </label>
    </div>
</template>

<script>
export default {
    props: [
        'raw',
    ],

    computed: {
        todo() {
            return JSON.parse(this.raw);
        },

        checked() {
            return this.todo['completed'] || '';
        },

        name() {
            return 'completed_' + this.todo['id'];
        },

        description() {
            return this.todo['description'];
        },
    },

    methods: {
        toggle(checked) {
            console.log('checked: ', checked);
            this.$emit('input', checked);
        },
    },
};
</script>
