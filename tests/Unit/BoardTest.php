<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\User;

class BoardTest extends TestCase
{
    use RefreshDatabase;

    public function setUp() {
        parent::setUp();

        $this->board = factory('App\Board')->create();
    }

    public function test_a_board_has_a_creator() {

        $this->assertInstanceOf(User::class, $this->board->creator);
    }

    public function test_it_can_add_a_todo() {

        $this->board->addTodo([
            'description' => 'Time is an illusion',
            'user_id' => 1,
        ]);

        $this->assertCount(1, $this->board->todos);
    }
}
