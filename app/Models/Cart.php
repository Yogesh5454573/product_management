<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;



class Cart extends Model
{
    use  Notifiable, LogsActivity, TapAdminActivityTrait;
    protected $guard = 'sanctum';
    Protected $table= 'carts';
    protected $fillable = ['user_id'];

    public function items()
    {
        return $this->hasMany(CartItem::class);
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['user_id'])
            ->useLogName('Carts')
            ->logOnlyDirty();
    }
}

