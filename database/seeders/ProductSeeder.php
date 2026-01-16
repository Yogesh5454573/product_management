<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use Illuminate\Support\Str; // Required for UUID

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        for ($i = 1; $i <= 15; $i++) {
            Product::create([
                'name'      => "Product " . $i,
                'sku'       => "SKU-" . strtoupper(Str::random(5)) . $i,
                'token'     => strtoupper((string) Str::uuid()),
                'price'     => rand(10, 500),
                'stock'     => rand(0, 100),
                'is_active' => true,
            ]);
        }
    }
}
