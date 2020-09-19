<?php

use Illuminate\Database\Seeder;
use FindJob\User;
use FindJob\Company;
use FindJob\Job;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory('FindJob\User',20)->create();
        factory('FindJob\Company',20)->create();
        factory('FindJob\Job',20)->create();
    }
}
