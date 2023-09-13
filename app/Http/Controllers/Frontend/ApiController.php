<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gallery; 
use App\Models\Track; 
use App\Models\Youtube; 
use App\Models\Artist;
use App\Models\ContactUs;
use App\Models\Subscribe; 
use App\Models\Post;
use App\Models\Sosmed;
use App\Models\SosmedArtist;
use Response;

class ApiController extends Controller
{
        /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gallery = Gallery::all();
        return view('frontend.index', compact('body_class'));
    }

    public function banner($id)
    {
        $gallery = Gallery::where(['landing' => $id, 'category' => 'banner'])->get();
        
        return Response::json($gallery);
    }

    public function track($id)
    {
        if($id == 'Wahana Production'){
            $track = Track::selectRaw('tracks.title as title, tracks.audio_url as mp3, tracks.audio_url as oga, tracks.artwork_url as poster, a.name as singer')
            ->Join('artists as a', 'tracks.artist_id', 'a.id')
            ->where(['tracks.landing' => $id])
            ->get();
        }else{
            $track = Track::selectRaw('tracks.*, a.name as singer')
            ->Join('artists as a', 'tracks.artist_id', 'a.id')
            ->where(['tracks.landing' => $id])
            ->get();
        }
        
        return Response::json($track);                                                                                                                                
    }

    public function gallery($id)
    {
        $gallery = Gallery::where(['landing' => $id])->where('category', 'Gallery')->orderBy('position', 'asc')->get();
        
        return Response::json($gallery);                                                                                                                                
    }

    public function background($id)
    {
        $gallery = Gallery::where(['landing' => $id, 'category' => 'Background'])->orderBy('position', 'asc')->get();
        
        return Response::json($gallery);                                                                                                                                
    }

    public function youtube($id)
    {
        if ($id == "Wahana Production") {
            $youtube = Youtube::where(['landing' => $id])->take(3)->get();
        }else{
            $youtube = Youtube::where(['landing' => $id])->take(4)->get();
        }
        
        return Response::json($youtube);                                                                                                                                
    }

    public function sosmed($id)
    {
        $sosmed = Sosmed::where(['landing' => $id])->get();
        
        return Response::json($sosmed);                                                                                                                                
    }

    public function sosmedartist(Request $request)
    {
        $id = $request->id ?? '';
        $slug = $request->slug ?? '';
        
        if($slug == ''){
            $topArtist = Artist::orderBy('position')->where('landing', $id)->first();
            $sosmed = SosmedArtist::where(['artist_id' => $topArtist->id])->get();
        }else{
            $artist = Artist::where(['landing' => $id, 'slug' => $slug])->first();
            $sosmed = SosmedArtist::where(['landing' => $id, 'artist_id' => $artist->id])->get();
        }
        
        return Response::json($sosmed);                                                                                                                                
    }
    
    public function artist($id)
    {
        if($id == 'Indonesia Timur'){
            $artist = Artist::where(['landing' => $id])->take(3)->orderBy('position', 'asc')->get();
        }else{
            $artist = Artist::where(['landing' => $id])->orderBy('position', 'asc')->get();
        }
        
        return Response::json($artist);
    }

    public function bioartist(Request $request)
    {
        $id = $request->id;
        $slug = $request->slug ?? '';
        $artist = Artist::where(['landing' => $id, 'slug' => $slug])->first();
        
        return Response::json($artist);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        $data['is_send'] = 1;
        $contactus = ContactUs::create($data);

        return response()->json($contactus, 201);
    }  

    public function subscribe(Request $request)
    {
        $data['email'] = $request->email;
        $data['landing'] = $request->landing ?? '';
        $data['is_send'] = 0;
        $subscribe = Subscribe::create($data);

        // return response()->json($request, 201);

        return response()->json($subscribe, 201);
    }

    public function blog(Request $request)
    {
        $landing = $request->landing;
        $paginate = $request->paginate;
        $page = $request->page;
        $offset = $page == 1 ? 0 : (intval(($page-1) * $paginate));

        $blogs = Post::where(['landing' => $landing])->offset($offset)->limit($paginate)->orderBy('created_at', 'asc')->get();
        $recents = Post::where(['landing' => $landing])->orderBy('order', 'asc')->get();
        $total = Post::where(['landing' => $landing])->get();
        
        return response()->json(['offset' => $page, 'blogs' => $blogs, 'recents' => $recents, 'total' => count($total)]);
    }

    public function blogdetail(Request $request)
    {
        $landing = $request->landing;
        $slug = $request->slug;
        
        $blog = Post::where(['landing' => $landing, 'slug' => $slug])->first();
        $recents = Post::where(['landing' => $landing])->orderBy('order', 'asc')->get();
        
        return Response::json(['blog' => $blog, 'recents' => $recents]);
    }
}