<?php

use Faker\Generator as Faker;

$factory->define(App\Todo::class, function (Faker $faker) {
    return [
        'user_id' => function () {
            return factory('App\User')->create()->id;
        },
        'board_id' => function () {
            return factory('App\Board')->create()->id;
        },
        'description' => $faker->sentence,
        'completed' => false,
    ];
});
