<?php

namespace Database\Seeders;

use App\Models\LeadStatus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LeadStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        LeadStatus::create([
            "name"=> "New"
        ]) ;
        LeadStatus::create([
            "name"=> "Contacted"
        ]) ;
        LeadStatus::create([
            "name"=> "Qualified"
        ]) ;
        LeadStatus::create([
            "name"=> "Converted"
        ]) ;
        LeadStatus::create([
            "name"=> "Rejected"
        ]) ;
        LeadStatus::create([
            "name"=> "Lost"
        ]) ;
    }
}
