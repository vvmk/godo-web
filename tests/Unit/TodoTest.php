<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TodoTest extends TestCase
{
    use RefreshDatabase;

    public function setUp() {
        parent::setUp();

        $this->todo = factory('App\Todo')->create();
    }

    public function test_it_belongs_to_a_board() {
        $this->assertInstanceOf('App\Board', $this->todo->board);
    }

    public function test_it_has_a_creator() {
        $this->assertInstanceOf('App\User', $this->todo->creator);
    }

    public function test_it_can_be_marked_done() {
        $this->todo->markDone();

        $this->assertTrue($this->todo->completed);
    }
}
