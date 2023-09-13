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
use App\Models\Artist;
use App\Models\Parameter;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;
use Flash;
use Storage;


class ArtistController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Artist';

        // module name
        $this->module_name = 'artists';

        // directory path of the module
        $this->module_path = 'artists';

        // module icon
        $this->module_icon = 'c-icon far fa-address-book';

        // module model name, path
        $this->module_model = "App\Models\Artist";
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
            $data = Artist::all();
        }else{
            $data = Artist::whereIn('landing', $channels)->get();
        }

        return Datatables::of($data)
        ->addIndexColumn()
        ->addColumn('action', function ($data) {
            $module_name = $this->module_name;

            return view('backend.includes.action_column_artist', compact('module_name', 'data'));
        })
        ->addColumn('image', function ($data) {
            $url = $data->image_url;
            return '<img src="'.$url.'" border="0" width="40" class="img-rounded" align="center" />';
        })
        ->rawColumns(['action', 'image'])
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

        $categories = Parameter::orderBy('param_text','DESC')->where('param_group', 'gallery_category')->get();

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return view(
            "backend.$module_name.create",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'categories', 'landings')
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

        $data = $request->all();
        $data['slug'] = Str::slug($request->name, '-'); 

        $image = "";
        if($request->hasFile('image')){	
            $this->validate($request, ['image' => 'required|file|max:5000']);

            $resource = $request->file('image');
            $extension = $request->file('image')->extension();
            $image = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/artists', $request->file('image'), $image);

            $url = url('/').'/storage/artists/'.$image;
            $data['image'] = $image;
            $data['image_url'] = $url;
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
        
        $categories = Parameter::orderBy('param_text','DESC')->where('param_group', 'gallery_category')->get();

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        $$module_name_singular = $module_model::findOrFail($id);
        
        return view(
            "backend.$module_name.show",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular",'categories', 'landings')
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

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }
        
        $$module_name_singular = $module_model::findOrFail($id);
        
        return view(
            "backend.$module_name.edit",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'landings')
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
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular =$module_model::findOrFail($id);

        $image = "";
        if($request->hasFile('image')){	
            $this->validate($request, ['image' => 'required|file|max:5000']);

            Storage::delete('public/artists/'.$$module_name_singular->image);
            $resource = $request->file('image');
            $extension = $request->file('image')->extension();
            $image = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/artists', $request->file('image'), $image);

            $url = url('/').'/storage/artists/'.$image;
            $$module_name_singular->image = $image;
            $$module_name_singular->image_url = $url;
        }

        $$module_name_singular->name = $request->name;
        $$module_name_singular->slug = Str::slug($request->name, '-');
        $$module_name_singular->bio = $request->bio;
        $$module_name_singular->position = $request->position;
        $$module_name_singular->landing = $request->landing;
        $$module_name_singular->spotify_embed = $request->spotify_embed;
        $$module_name_singular->save();
        
        Flash::success("<i class='fas fa-check'></i>  '".$module_name." ".Str::singular($module_title)."' Updated")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name");
    }

}
