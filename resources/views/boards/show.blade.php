@extends('layouts.master')
@section('content')

<board-show inline-template
            :init-todos="{{ $board->todos }}"
            >
            <div>
                        <div class="level">
                                    <div class="level-left">
                                                <h3 class="subtitle is-3 level-item">
                                                            {{ $board->name }} by <a href="{{ $board->creator->path() }}">{{ $board->creator->name }}</a>
                                                </h3>
                                    </div>

                                    <div class="level-right">
                                                <form action="/boards/{{ $board->id }}" method="POST">
                                                            @method('DELETE')
                                                            @csrf

                                                            <button type="submit" class="level-item button icon has-text-danger is-text">
                                                                        <i class="fas fa-trash-alt"></i>
                                                            </button>
                                                </form>
                                    </div>
                        </div>
                        <div class="box">
                                    <form @@submit.prevent="postTodo('/boards/{{ $board->id }}/todos')">

                                                <div class="field">
                                                            <label v-show="false" class="label" for="description">&nbsp;</label>

                                                            <div class="control">
                                                                        <input class="input"
                                                                               type="text"
                                                                               name="description"
                                                                               placeholder="New Todo"
                                                                               @@keydown.ctrl.87="controlW"
                                                                               @@keydown.ctrl.85="controlU"
                                                                               v-model="todoField"
                                                                               autofocus
                                                                               v-autofocus="{{ true }}" />
                                                            </div>
                                                </div>

                                                <div class="field">
                                                            <div class="control">
                                                                        <button :disabled="!this.todoField" class="button is-link">Add Todo</button>
                                                            </div>
                                                </div>

                                                @include('errors')
                                    </form>

                                    <div class="section">

                                                <div class="level">

                                                            <div class="level-left">
                                                                        <button :class="{'level-item': true, 'button': true, 'is-medium': true, 'icon': true, 'is-warning': editMode}"
                                                                 @@click="editMode = !editMode">
                                                                                    <i class="fas fa-toolbox"></i>
                                                                        </button>
                                                                        <button :class="{'level-item': true, 'button': true, 'is-medium': true, 'icon': true }"
                                                                                       v-if="editMode"
                                                                                       @@click="deleteCompleted('/boards/{{ $board->id }}/cleanup')">
                                                                                       <i class="fas fa-broom"></i>
                                                                        </button>
                                                            </div>

                                                            <div class="level-right">
                                                                        <div class="level-item">
                                                                                    <button :class="{'button': true, 'is-medium': true, 'icon': true, 'is-link': showBlame}"
                                                                             @click="showBlame = !showBlame">
                                                                                                <i class="fas fa-user"></i>
                                                                                    </button>
                                                                        </div>

                                                                        <div class="level-item">
                                                                                    <button :class="{'button': true, 'is-medium': true, 'icon': true, 'is-link': showTimestamp}"
                                                                             @click="showTimestamp = !showTimestamp">
                                                                                                <i class="fas fa-clock"></i>
                                                                                    </button>
                                                                        </div>
                                                            </div>
                                                </div>

                                                <div v-for="todo in todos" :key="todo.id" class="level">

                                                            <div class="level-left">
                                                                        <div class="level-item">

                                                                                    <todo-item :todo="todo" 
                                                                             :action="'/todos/' + todo.id"
                                                                             :edit-mode="editMode"
                                                                             @@todo-deleted="removeFromList">
                                                                                    </todo-item>

                                                                        </div>
                                                            </div>

                                                            <div class="level-right">
                                                                        <div v-if="showBlame || showTimestamp" class="level-item is-size-7">
                                                                                    <a v-if="showBlame" :href="'/users/' + todo.user_id" v-text="todo.user_id"></a>
                                                                                    <span v-if="showBlame && showTimestamp">&nbsp;added&nbsp;</span>
                                                                                    <span v-if="showTimestamp" v-text="todo.created_at"><span>
                                                                        </div>
                                                            </div>

                                                </div>

                                    </div>
                        </div>

            </div>
</board-show>
@endsection
