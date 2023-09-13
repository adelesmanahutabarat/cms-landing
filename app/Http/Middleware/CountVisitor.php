<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\Visitor;

class CountVisitor
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $ip =$request->ip();
        if (Visitor::where('created_at', today())->where('ip', $ip)->count() < 1)
        {
            Visitor::create([
                'created_at' => today(),
                'device'=>$request->userAgent(),
                'ip' => $ip,
            ]);
        }
        return $next($request);
    }
}