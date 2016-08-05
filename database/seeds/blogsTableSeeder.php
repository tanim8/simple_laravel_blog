<?php

use Illuminate\Database\Seeder;
use App\Models\Blog;
use Faker\Factory as Faker;

class blogsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
             Eloquent::unguard();
             Blog::truncate();
    	$faker = Faker::create();
    	foreach (range(1,10) as $index) {
	        Blog::insert([
            'title' => $faker->title,
            'description' => $faker->paragraph,
            'username' => $faker->firstName
	        ]);
        }
               

    }
}
