<?php

namespace App\Models\Presenters;

use Carbon\Carbon;
use Illuminate\Support\Str;

trait ElementPresenter
{
    public function getComponentAttribute()
    {
        $components = json_decode($this->value);
        return $components;
    }

    
}
