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

class SosmedArtistController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Sosial Media Artist';

        // module name
        $this->module_name = 'sosmedartists';

        // directory path of the module
        $this->module_path = 'sosmedartists';

        // module icon
        $this->module_icon = 'fas fa-file-alt';

        // module model name, path
        $this->module_model = "App\Models\SosmedArtist";
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
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

        $id_user = $id;

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');
     
        return view(
            "backend.$module_name.index",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'id_user')
        );
    }

    public function index_list($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::select('id', 'account_name', 'platform', 'landing', 'created_at')->where('artist_id', $id);

        $data = $$module_name;

        return Datatables::of($$module_name)
        ->addIndexColumn()
        ->addColumn('action', function ($data) {
            $module_name = $this->module_name;

            return view('backend.includes.action_column', compact('module_name', 'data'));
        })
        ->rawColumns(['action'])
        ->orderColumns(['id'], '-:column $1')
        ->make(true);
    }

    public function create($id){
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create';

        $id_user = $id;

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        $platforms = Parameter::where('param_group', 'Platform')->get();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return view(
            "backend.$module_name.create",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'landings', 'platforms', 'id_user')
        );
    }

            /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        // dd($request->all());
        $module_action = 'Store';
        $id_user = $id;
        $data = $request->all();
        $data['artist_id'] = $id_user;

        $$module_name_singular = $module_model::create($data);
        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name/$id");
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
        $id_user = $id;
        
        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }

        $$module_name_singular = $module_model::findOrFail($id);
        $platforms = Parameter::where('param_group', 'Platform')->get();
        
        return view(
            "backend.$module_name.show",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'landings', 'platforms', 'id_user')
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
        $id_user = $id;

        if (user_roles() == 'super admin') {
            $landings = UserPIC::with('parameter')->get();
        }else{
            $landings = UserPIC::with('parameter')->where('user_id', auth()->user()->id)->get();
        }
        
        $$module_name_singular = $module_model::findOrFail($id);
        $platforms = Parameter::where('param_group', 'Platform')->get();

        return view(
            "backend.$module_name.edit",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'landings', 'platforms', 'id_user')
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
        $$module_name_singular->account_name = $request->account_name;
        $$module_name_singular->platform = $request->platform;
        $$module_name_singular->landing = $request->landing;
        $$module_name_singular->save();
        
        $id_user = $$module_name_singular->artist_id;

        Flash::success("<i class='fas fa-check'></i> Sosial Media '".Str::singular($module_title)."' Updated")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name/$id_user");
    }   
}