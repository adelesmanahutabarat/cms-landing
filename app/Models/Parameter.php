<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Parameter extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $guarded = [];
    protected $table = 'parameters';

     /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function userpic()
    {
        return $this->hasMany('App\Models\UserPIC');
    }
    
}
