<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TodoTest extends TestCase
{
    use RefreshDatabase;

    public function test_it_belongs_to_a_board() {
        $todo = factory('App\Todo')->create();

        $this->assertInstanceOf('App\Board', $todo->board);
    }

    /* public function test_it_defaults_to_inbox() { */
    /* } */
}
