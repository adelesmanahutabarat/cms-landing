<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SosmedArtist extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'sosmed_artists';
}