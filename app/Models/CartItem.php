<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;


class CartItem extends Model
{
    use  Notifiable, LogsActivity, TapAdminActivityTrait;

    protected $guard = 'sanctum';
    Protected $table= 'cart_items';

    protected $fillable = [
        'cart_id',
        'product_id',
        'qty',
        'price_at_time'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['cart_id', 'product_id', 'qty', 'price_at_time'])
            ->useLogName('Cart items')
            ->logOnlyDirty();
    }
}


