<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\UserStatues;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {

        $this->call([
            LeadStatusSeeder::class,
            RoleSeeder::class,
            UserStatuesSeeder::class,
            UserSeeder::class,
            LeadSeeder::class,


        ]);
    }
}
