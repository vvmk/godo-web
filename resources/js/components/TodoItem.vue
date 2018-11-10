<template>
    <label class="checkbox" :for="controlName">
        <input {{ checked }} type="checkbox" :name="controlName" @change="toggleChecked">
            {{ todo['description'] }}
    </label>
    <slot></slot>
</template>

<script>
export default {
    props: ["todo"],

    computed: {
        checked() {
            return this.todo["completed"] || "";
        },

        controlName() {
            return "completed_" + this.todo["id"];
        }
    },

    mounted() {
        console.log(this.todo);
    },

    methods: {
        toggleChecked(checked) {
            console.log("checked: ", checked);
            this.$emit("input", checked);
        }
    }
};
</script>
