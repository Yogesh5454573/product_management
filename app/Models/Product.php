<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model; // Use the standard Model
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions; // Required for Spatie v4+

class Product extends Model // Renamed to Singular
{
    use HasFactory, LogsActivity;

    protected $table = 'products'; // Explicitly link to the plural table
    
    protected $fillable = [
        'token',
        'name',
        'sku',
        'price',
        'stock',
        'is_active'
    ];

    // Spatie Activity Log configuration (Required if using LogsActivity trait)
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['name', 'sku', 'price', 'stock', 'is_active'])
            ->useLogName('Product Log')
            ->logOnlyDirty();
    }
}