<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Modules\Catalog\Entities\Catalog;
use App\Models\Track;
use App\Models\Youtube;
use Auth;

class BackendController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $catalog_pending = Catalog::where([['status','=','0']])->count();
        $catalog_diterima = Catalog::where([['status','=','1']])->count();
        $channels = pic_channels();

        if(Auth::user()->hasRole('super admin')){
            $track = Track::all()->count();
            $youtube = Youtube::all()->count();
        }else{
            $track = Track::where('landing', $channels)->count();
            $youtube = Youtube::where('landing', $channels)->count();
        }
        return view('backend.index',compact('track','youtube'));
    }
}