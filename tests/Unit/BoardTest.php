<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\User;

class BoardTest extends TestCase
{
    use RefreshDatabase;

    public function test_a_board_has_a_creator() {
        $board = factory('App\Board')->create();

        $this->assertInstanceOf(User::class, $board->creator);
    }
}
