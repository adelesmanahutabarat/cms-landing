<?php
namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
class SitemapController extends Controller
{
    public function index() {
        $posts = Post::all();
        return response()->view('frontend.sitemap', [
            'posts' => $posts
        ])->header('Content-Type', 'text/xml');
      }
}