<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UserTest extends TestCase
{
    use RefreshDatabase;

    public function test_user_path() {
        $user = factory('App\User')->create();

        $this->assertEquals('/users/' . $user->name, $user->path());
    }
}
