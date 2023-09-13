<?php

namespace App\Http\Controllers\Backend;

use App\Authorizable;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Str;
use Log;
use App\Models\User;
use App\Models\UserPIC;
use App\Models\Track;
use App\Models\Artist;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;
use Flash;
use Storage;


class TrackController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Track';

        // module name
        $this->module_name = 'tracks';

        // directory path of the module
        $this->module_path = 'tracks';

        // module icon
        $this->module_icon = 'c-icon far fa-address-book';

        // module model name, path
        $this->module_model = "App\Models\Track";
    }

       /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model; 
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $page_heading = ucfirst($module_title);
        $title = $page_heading.' '.ucfirst($module_action);

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');
     
        return view(
            "backend.$module_name.index",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular')
        );
    }

    public function index_list()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $channels = pic_channels();

        if(Auth::user()->hasRole('super admin')){
            $data = Track::all();
        }else{
            $data = Track::whereIn('landing', $channels)->get();   
        }        
                
        return Datatables::of($data)
        ->addIndexColumn()
        ->addColumn('action', function ($data) {
            $module_name = $this->module_name;

            return view('backend.includes.action_column', compact('module_name', 'data'));
        })
        ->rawColumns(['action'])
        ->make(true);
    }

        /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create';

        $artists = Artist::all();
        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return view(
            "backend.$module_name.create",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'landings', 'artists')
        );
    }

        /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        // Handle Image upload
        $data = $request->all();

        $artwork = "";
        $audio = "";
        if($request->hasFile('artwork')){	
            $this->validate($request, ['artwork' => 'required|file|max:5000']);

            $resource = $request->file('artwork');
            $extension = $request->file('artwork')->extension();
            $artwork = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/artwork', $request->file('artwork'), $artwork);

            $url = url('/').'/storage/artwork/'.$artwork;
            $data['artwork_url'] = $url;
            $data['artwork'] = $artwork;
        }

        if($request->hasFile('audio')){	
            $resource = $request->file('audio');
            $extension = $request->file('audio')->extension();
            $audio = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/audio', $request->file('audio'), $audio);

            $url = url('/').'/storage/audio/'.$audio;
            $data['audio_url'] = $url;
            $data['audio'] = $audio;
        }
        
        $$module_name_singular = $module_model::create($data);
        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name");
    }

            /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';
        
        $artists = Artist::all();
        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        $$module_name_singular = $module_model::findOrFail($id);
        
        return view(
            "backend.$module_name.show",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'track', 'landings', 'artists')
        );
    }

        /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Edit';

        $artists = Artist::all();
        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }
        
        $$module_name_singular = $module_model::findOrFail($id);
        
        return view(
            "backend.$module_name.edit",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'track', 'landings', 'artists')
        );
    }

        /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        // dd($request);
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular =$module_model::findOrFail($id);
        $data = $request->all();

        $artwork = "";
        $audio = "";
        if($request->hasFile('artwork')){	
            $this->validate($request, ['artwork' => 'required|file|max:5000']);

            Storage::delete('public/artwork/'.$$module_name_singular->artwork);
            $resource = $request->file('artwork');
            $extension = $request->file('artwork')->extension();
            $artwork = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/artwork', $request->file('artwork'), $artwork);

            $url = url('/').'/storage/artwork/'.$artwork;
            $$module_name_singular->artwork_url = $url;
            $$module_name_singular->artwork = $artwork;
        }

        if($request->hasFile('audio')){	
            Storage::delete('public/audio/'.$$module_name_singular->audio);
            $resource = $request->file('audio');
            $extension = $request->file('audio')->extension();
            $audio = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/audio', $request->file('audio'), $audio);

            $url = url('/').'/storage/audio/'.$audio;
            $$module_name_singular->audio_url = $url;
            $$module_name_singular->audio = $audio;
        }

        $$module_name_singular->title = $request->title;
        $$module_name_singular->position = $request->position;
        $$module_name_singular->link_shop = $request->link_shop;
        $$module_name_singular->release_date = $request->release_date;
        $$module_name_singular->landing = $request->landing;
        $$module_name_singular->artist_id = $request->artist_id;
        $$module_name_singular->save();
        
        Flash::success("<i class='fas fa-check'></i> Youtube '".Str::singular($module_title)."' Updated")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name");
    }

        /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }

}