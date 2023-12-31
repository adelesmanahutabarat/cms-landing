<?php

use Illuminate\Http\Request;
use App\ContactUs;
use App\Http\Controllers\Frontend\ApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::apiResource('posts',ApiController::class);
Route::post('contactus', 'frontend\ApiController@store');
Route::post('subscribe', 'frontend\ApiController@subscribe');
