<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class Visitor  extends Model
{
    use HasFactory;
    public $timestamps = FALSE;
    protected $fillable = [
        'ip',
        'device',
        'created_at'
    ];
    /**
     * The attributes that should be cast.
     *
     * @var array
     */

    protected $casts = [
        'created_at' => 'datetime:Y-m-d',
    ];
}
