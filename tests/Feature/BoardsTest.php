<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class BoardTest extends TestCase
{
    use RefreshDatabase;

    public function test_a_user_can_browse_boards()
    {
        $board = factory('App\Board')->create();

        $response = $this->get('/boards');
        $response->assertSee($board->name);

    }
    
    public function test_a_user_can_view_a_board() {
        $board = factory('App\Board')->create();

        $response = $this->get('/boards/' . $board->name);
        $response->assertSee($board->name);
    }
}
