<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class BoardTest extends TestCase
{
    use RefreshDatabase;

    public function test_a_user_can_browse_boards()
    {
        $response = $this->get('/boards');

        $response->assertStatus(200);
    }
}
