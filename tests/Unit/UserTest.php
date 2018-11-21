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
        $this->assertEquals('/users/' . $this->user->id, $this->user->path());
    }

    public function test_user_has_a_profile_page() {
        $this->signIn($this->user);

        $response = $this->get($this->user->path());

        $response->assertSee($this->user->name); 
    }

    public function test_user_can_set_autofocus_prefs() {
        // sign in user
        $this->signIn($this->user);

        // test the default setting (true for this specific pref)
        $this->assertTrue($this->user->prefs('autofocus'));

        // make a [tbd] request to prefs endpoint to toggle it (off)
        $this->patch($this->user->path() . '/prefs', ['autofocus' => false]);

        //assert the pref has been set ($user->prefs('autofocus') == false)
        $this->assertFalse($this->user->prefs('autofocus'));
    }
}
