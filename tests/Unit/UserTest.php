<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UserTest extends TestCase
{
    use RefreshDatabase;

    public function setUp() {
        parent::setUp();

        $this->user = factory('App\User')->create();
    }

    public function test_user_path() {
        $this->assertEquals('/users/' . $this->user->name, $this->user->path());
    }

    public function test_user_has_a_profile_page() {
        $response = $this->get('/users/' . $this->user->id);

       $response->assertSee($this->user->name); 
    }
}
