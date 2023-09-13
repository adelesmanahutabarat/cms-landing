<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use App\Events\Backend\PostViewed;
use App\Models\Post;
use App\Models\Category;
class PostsController extends Controller
{
    public function __construct()
    {
        // Page Title
        $this->module_title = 'Posts';

        // module name
        $this->module_name = 'posts';

        // directory path of the module
        $this->module_path = 'posts';

        // module icon
        $this->module_icon = 'fas fa-file-alt';

        // module model name, path
        $this->module_model = "App\Models\Post";
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
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

        $$module_name = $module_model::latest()->paginate(5);
        $recents = $module_model::latest()->paginate(4);

        return view(
            "frontend.$module_path.index",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_action', 'module_name_singular', 'recents')
        );
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($slug)
    {
        // $id = ($hashid);

        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';

        $meta_page_type = 'article';

        $post = Post::where('slug',$slug)->first();
        $recents = $module_model::latest()->paginate(4);

        // dd($post);
        $categories = Category::limit(6)->get();
        // event(new PostViewed($$module_name_singular));

        return view(
            "frontend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', 'post', 'meta_page_type','categories','recents')
        );
    }
}
