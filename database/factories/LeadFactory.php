<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Lead>
 */
class LeadFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            "full_name" => fake()->name,
            "email" => fake()->unique()->email,
            "phone_number" => fake()->unique()->phoneNumber,
            "value" => rand(600,1000),

            "company_name" => fake()->company,
            "job_title" => fake()->jobTitle,
            "address" => fake()->address,
            "sales_id" => rand(1,5),
            "status_id" => rand(1,6),
        ];
    }
}
