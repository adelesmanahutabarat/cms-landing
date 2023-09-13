<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Authorizable;
use Modules\Catalog\Entities\Catalog;
use App\Http\Controllers\Controller;
use App\Models\UserPIC;
use App\Models\User;
use App\Models\Parameter;
use Auth;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Response;
use Illuminate\Support\Str;
use Log;
use Yajra\DataTables\DataTables;

class PICController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'User PIC';

        // module name
        $this->module_name = 'pics';

        // directory path of the module
        $this->module_path = 'pics';

        // module icon
        $this->module_icon = 'c-icon far fa-address-book';

        // module model name, path
        $this->module_model = "App\Models\UserPIC";
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
        $user = User::find($id);

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');
     
        return view(
            "backend.$module_name.index",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'user')
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

        $$module_name = UserPIC::with('parameter')->where('user_id', $id)->get();
        // $$module_name = $module_model::where('user_id', $id)->get();

        $data = $$module_name;

        return Datatables::of($$module_name)
        ->addIndexColumn()
        ->addColumn('action', function ($data) {
            $module_name = $this->module_name;

            return view('backend.includes.action_column_pic', compact('module_name', 'data'));
        })
        ->editColumn('created_at', function ($data) {
            return $data->created_at;
        })
        ->addColumn('landing', function ($data) {
            $landing = $data->parameter->param_text;

            return $landing;
        })
        ->rawColumns(['action', 'landing'])
        ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create';

        $landings = Parameter::where('param_group', 'Landing')->orderBy('param_key','DESC')->get();
        $user = User::find($id);

        Log::info(label_case($module_title.' '.$module_action).' | User:'.auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return view(
            "backend.$module_name.create",
            compact('module_title', 'module_name', 'module_path', 'module_icon', 'module_action', 'module_name_singular', 'landings', 'user')
        );
    }


    public function store(Request $request, $id)
    {
    
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        $data["user_id"] = $id;
        $data["landing_id"] = $request->landing_id;
        $data["create_by_name"] = auth()->user()->name;
        $$module_name_singular = $module_model::create($data);
                
        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        return redirect("admin/$module_name/$id");
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
        
        $$module_name_singular = $module_model::findOrFail($id);

        $landings = Parameter::where('param_group', 'Landing')->orderBy('param_key','DESC')->get();
        $user = User::find($id);
        
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
        $$module_name_singular->landing_id = $request->landing_id;
        $$module_name_singular->save();

        Flash::success("<i class='fas fa-check'></i> Youtube '".Str::singular($module_title)."' Updated")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name/".$$module_name_singular->user_id);

    }
    
    /**
     * List of trashed ertries
     * works if the softdelete is enabled.
     *
     * @return Response
     */
    public function destroy($id)
    {
        $module_name = $this->module_name;
        $module_title = $this->module_title;
        $module_name_singular = Str::singular($this->module_name);
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;

        $module_action = 'Delete';

        
        $$module_name_singular = $module_model::where('id', '=', $id)->first();
        $$module_name_singular->delete();

        Flash::success("<i class='fas fa-check'></i> '".Str::singular($module_title)."' Deleted")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".auth()->user()->name.'(ID:'.auth()->user()->id.')');

        return redirect("admin/$module_name/".$$module_name_singular->user_id);
    }
}
