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
use App\Models\Gallery;
use App\Models\Parameter;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;
use Flash;
use Storage;

class GalleryController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Gallery';

        // module name
        $this->module_name = 'galleries';

        // directory path of the module
        $this->module_path = 'galleries';

        // module icon
        $this->module_icon = 'c-icon far fa-address-book';

        // module model name, path
        $this->module_model = "App\Models\Gallery";
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
            $data = Gallery::all();
        }else{
            $data = Gallery::whereIn('landing', $channels)->get();
        }

        return Datatables::of($data)
        ->addIndexColumn()
        ->addColumn('action', function ($data) {
            $module_name = $this->module_name;

            return view('backend.includes.action_column', compact('module_name', 'data'));
        })
        ->addColumn('image', function ($data) {
            $url = $data->image;
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

        $galleries = Gallery::all();
        $categories = Parameter::orderBy('param_text','DESC')->where('param_group', 'gallery_category')->get();

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return view(
            "backend.$module_name.create",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'galleries', 'categories', 'landings')
        );
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
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'landings', "$module_name_singular", 'categories')
        );
    }

    public function store(Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        $data = $request->except(['image']);

        $artwork = "";
        if($request->hasFile('image')){	
            $this->validate($request, ['image' => 'required|file|max:5000']);

            $resource = $request->file('image');
            $extension = $request->file('image')->extension();
            $artwork = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/galleries', $request->file('image'), $artwork);

            $url = url('/').'/storage/galleries/'.$artwork;
            $data['image'] = $url;
        }

        $$module_name_singular = $module_model::create($data);
        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name");
    }

    public function uploadImage($file, $id){
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $resource = $file;
        $extension = $file->extension();
        $filename = date('dmyHis').$id.'.'.$extension;
        $path = Storage::putFileAs('public/galleries', $file, $filename);
    
        $$module_name_singular = $module_model::findOrFail($id);
        Storage::delete('public/galleries/'.$$module_name_singular->image);
        $$module_name_singular->image = $filename;
        $$module_name_singular->save();

        return $filename;
    }
            /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function storeOld(Request $request)
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

        if($request->hasFile('image1')){	
            $image = $this->uploadImage($request->file('image1'), 1);
        }
        if($request->hasFile('image2')){	
            $image = $this->uploadImage($request->file('image2'), 2);
        }
        if($request->hasFile('image3')){	
            $image = $this->uploadImage($request->file('image3'), 3);
        }
        if($request->hasFile('image4')){	
            $image = $this->uploadImage($request->file('image4'), 4);
        }
        if($request->hasFile('image5')){	
            $image = $this->uploadImage($request->file('image5'), 5);
        }
        if($request->hasFile('image6')){	
            $image = $this->uploadImage($request->file('image6'), 6);
        }
        
        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        return redirect("admin/$module_name/create");
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
        $categories = Parameter::orderBy('param_text','DESC')->where('param_group', 'gallery_category')->get();

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }
        
        $$module_name_singular = $module_model::findOrFail($id);
        
        return view(
            "backend.$module_name.edit",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'landings', 'categories')
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
        $data = $request->all();

        $artwork = "";
        if($request->hasFile('image')){	
            $this->validate($request, ['image' => 'required|file|max:5000']);

            Storage::delete('public/galleries/'.$$module_name_singular->artwork);
            $resource = $request->file('image');
            $extension = $request->file('image')->extension();
            $artwork = date('dmyHis').'.'.$extension;
            $path = Storage::putFileAs('public/galleries', $request->file('image'), $artwork);

            $url = url('/').'/storage/galleries/'.$artwork;
            $$module_name_singular->image = $url;
        }

        $$module_name_singular->title = $request->title;
        $$module_name_singular->position = $request->position;
        $$module_name_singular->landing = $request->landing;
        $$module_name_singular->category = $request->category;
        $$module_name_singular->save();
        
        Flash::success("<i class='fas fa-check'></i> '".$module_name_singular." ".Str::singular($module_title)."' Updated")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name");
    }
}