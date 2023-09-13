<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserPIC extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table='userpics';
    protected $dates = ['deleted_at'];

    protected $fillable = [
        'user_id',
        'landing_id',
        'created_by_name'
    ];

    public function User(){
    	return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }

    public function Parameter(){
    	return $this->belongsTo('App\Models\Parameter', 'landing_id', 'id');
    }
}
