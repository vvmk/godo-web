<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class InteractWithTodos extends TestCase
{
    use RefreshDatabase;

    public function test_adding_a_todo_will_create_its_board_if_needed() {
        $this->assertTrue(false);
    }

    public function test_an_authenticated_user_can_create_todos() {

        $this->signIn(factory('App\User')->create());

        $board = factory('App\Board')->create();

        // when user adds a todo to the board
        $todo = factory('App\Todo')->create();
        $this->post($board->path() . '/todos', $todo->toArray());

        // then their todo should be visible on the page
        $this->get($thread->path())
            ->assertSee($todo->description);
    }

        /* $this->todo->markDone(); */
        /* $this->assertTrue($this->todo->completed); */
}
