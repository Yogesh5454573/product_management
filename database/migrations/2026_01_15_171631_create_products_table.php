<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('tbl_products', function (Blueprint $table) {
            $table->id();
            
            // Name: required
            $table->string('name'); 
            
            // SKU: required, unique
            $table->string('sku')->unique(); 
            
            // Price: decimal, > 0 (logic handled in validation), 10 digits total, 2 decimals
            $table->decimal('price', 10, 2); 
            
            // Stock: integer, >= 0 (defaulting to 0 is safe practice)
            $table->integer('stock')->default(0); 
            
            // Is Active: boolean
            $table->boolean('is_active')->default(true);
            
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tbl_products');
    }
};