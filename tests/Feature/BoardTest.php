<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class BoardTest extends TestCase {

    use RefreshDatabase;

    public function setUp() {
        parent::setUp();

        $this->board = factory('App\Board')->create();
    }

    public function test_board_path() {
        $this->assertEquals('/boards/' . $this->board->name, $this->board->path());
    }

    public function test_a_user_can_browse_boards() {
        $response = $this->get('/boards');
        $response->assertSee($this->board->name);

    }
    
    public function test_a_user_can_view_a_board() {
        $response = $this->get($this->board->path());
        $response->assertSee($this->board->name);
    }

    public function test_a_user_can_read_todos_on_a_board() {
        $todo = factory('App\Todo')->create(['board_id' => $this->board->id]);

        $this->get($this->board->path())
            ->assertSee($todo->body);
    }

    /*
    public function test_a_user_can_mark_todos_as_done() {

        $this->signIn($this->board->creator);

        $todo = factory('App\Todo')->create([
            'board_id' => $this->board->id,
            'user_id' => $this->board->creator->id,
        ]);

        $this->patch('/todos/' . $todo->id, ['completed' => 'on']);

        $this->assertTrue($todo->completed);
    }
     */
}
