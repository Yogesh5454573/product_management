<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Product extends Model
{
    use HasFactory, LogsActivity;

    protected $table = 'products';
    
    protected $fillable = [
        'token',
        'name',
        'sku',
        'price',
        'stock',
        'is_active'
    ];
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['name', 'sku', 'price', 'stock', 'is_active'])
            ->useLogName('Product Log')
            ->logOnlyDirty();
    }
}