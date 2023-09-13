<?php

namespace App\Models;

use App\Models\BaseModel;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends BaseModel
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'categories';

    /**
     * Caegories has Many posts.
     */
    public function posts()
    {
        return $this->hasMany('App\Models\Post');
    }

    /**
     * Set the published at
     * If no value submitted use the 'Title'.
     *
     * @param [type]
     */
    public function setPublishedAtAttribute($value)
    {
        $this->attributes['published_at'] = $value;

        if (empty($value) && $this->attributes['status'] == 1) {
            $this->attributes['published_at'] = Carbon::now();
        }
    }

    
}
