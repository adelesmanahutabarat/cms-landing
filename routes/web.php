<?php
use App\Http\Controllers\Auth\AuthenticatedSessionController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Autho Routes
require __DIR__.'/auth.php';

// Atom/ RSS Feed Routes
// Route::feeds();

// Language Switch
Route::get('language/{language}', 'LanguageController@switch')->name('language.switch');


/*
*
* Frontend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => 'Frontend', 'as' => 'frontend.'], function () {

        //Route cache:
        Route::get('/route-cache', function() {
            $exitCode = Artisan::call('route:cache');
            return '<h1>Routes cached</h1>';
        });
        
        //Storage Link:
        Route::get('/storage-link', function() {
            $exitCode = Artisan::call('storage:link');
            return '<h1>Storage Link Sukses</h1>';
        });
        
    Route::get('/', 'FrontendController@index')->name('index');
    Route::get('home', 'FrontendController@index')->name('home');
    Route::get('privacy', 'FrontendController@privacy')->name('privacy');
    Route::get('terms', 'FrontendController@terms')->name('terms');




    /*
    *
    *  User API Routes
    *
    * ---------------------------------------------------------------------
    */

    $module_name = 'apis';
    $controller_name = 'ApiController';
    // Route::resource("$module_name", "$controller_name");
    Route::get("$module_name/banner/{id}", ['as' => "$module_name.banner", 'uses' => "$controller_name@banner"]);
    Route::get("$module_name/track/{id}", ['as' => "$module_name.track", 'uses' => "$controller_name@track"]);
    Route::get("$module_name/gallery/{id}", ['as' => "$module_name.gallery", 'uses' => "$controller_name@gallery"]);
    Route::get("$module_name/background/{id}", ['as' => "$module_name.background", 'uses' => "$controller_name@background"]);
    Route::get("$module_name/youtube/{id}", ['as' => "$module_name.youtube", 'uses' => "$controller_name@youtube"]);
    Route::get("$module_name/artist/{id}", ['as' => "$module_name.artist", 'uses' => "$controller_name@artist"]);
    Route::get("$module_name/bioartist", ['as' => "$module_name.bioartist", 'uses' => "$controller_name@bioartist"]);
    Route::get("$module_name/blog", ['as' => "$module_name.blog", 'uses' => "$controller_name@blog"]);
    Route::get("$module_name/blogdetail", ['as' => "$module_name.blogdetail", 'uses' => "$controller_name@blogdetail"]);
    Route::get("$module_name/sosmed/{id}", ['as' => "$module_name.sosmed", 'uses' => "$controller_name@sosmed"]);
    Route::get("$module_name/sosmedartist", ['as' => "$module_name.sosmedartist", 'uses' => "$controller_name@sosmedartist"]);
});

/*
*
* Frontend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => 'Backend', 'as' => 'backend.', 'middleware' => ['auth']], function () {
    Route::get('/', 'BackendController@index')->name('index');
});
/*
*
* Label Routes
* These routes need view-backend permission
* --------------------------------------------------------------------
*/
Route::group(['namespace' => 'Backend', 'prefix' => 'label', 'as' => 'label.', 'middleware' => ['auth', 'can:view_label']], function () {
    Route::get('/', 'LabelController@index')->name('home');
    Route::get('dashboard', 'LabelController@index')->name('dashboard');
    /*
    *
    *  Users Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'users';
    $controller_name = 'UserController';
    Route::get("$module_name/profile/{id}", ['as' => "$module_name.profile", 'uses' => "$controller_name@profile"]);
    Route::get("$module_name/profile/{id}/edit", ['as' => "$module_name.profileEdit", 'uses' => "$controller_name@profileEdit"]);
    Route::patch("$module_name/profile/{id}/edit", ['as' => "$module_name.profileUpdate", 'uses' => "$controller_name@profileUpdate"]);
    Route::get("$module_name/emailConfirmationResend/{id}", ['as' => "$module_name.emailConfirmationResend", 'uses' => "$controller_name@emailConfirmationResend"]);
    Route::delete("$module_name/userProviderDestroy", ['as' => "$module_name.userProviderDestroy", 'uses' => "$controller_name@userProviderDestroy"]);
    Route::get("$module_name/profile/changeProfilePassword/{id}", ['as' => "$module_name.changeProfilePassword", 'uses' => "$controller_name@changeProfilePassword"]);
    Route::patch("$module_name/profile/changeProfilePassword/{id}", ['as' => "$module_name.changeProfilePasswordUpdate", 'uses' => "$controller_name@changeProfilePasswordUpdate"]);
    Route::get("$module_name/changePassword/{id}", ['as' => "$module_name.changePassword", 'uses' => "$controller_name@changePassword"]);
    Route::patch("$module_name/changePassword/{id}", ['as' => "$module_name.changePasswordUpdate", 'uses' => "$controller_name@changePasswordUpdate"]);
});
/*
*
* Backend Routes
* These routes need view-backend permission
* --------------------------------------------------------------------
*/
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'backend.', 'middleware' => ['auth', 'can:view_backend']], function () {

    //Route cache:
    Route::get('/route-cache', function() {
        $exitCode = Artisan::call('route:cache');
        return '<h1>Routes cached</h1>';
    });
        
    /**
     * Backend Dashboard
     * Namespaces indicate folder structure.
     */
    Route::get('/', 'BackendController@index')->name('home');
    Route::get('dashboard', 'BackendController@index')->name('dashboard');

    /*
     *
     *  Categories Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'categories';
    $controller_name = 'CategoriesController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");

    /*
     *
     *  Posts Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'posts';
    $controller_name = 'PostsController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");
    /*
     *
     *  Tags Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'tags';
    $controller_name = 'TagsController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");
    /*
     *
     *  Comment Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'comments';
    $controller_name = 'CommentsController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");

    /*
     *
     *  Sosmeds Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'sosmeds';
    $controller_name = 'SosmedController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");

    /*
     *
     *  Sosmeds Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'sosmedartists';
    $controller_name = 'SosmedArtistController';
    Route::get("$module_name/{id}", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/{id}/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/{id}/create", ['as' => "$module_name.create", 'uses' => "$controller_name@create"]);
    Route::patch("$module_name/{id}/store", ['as' => "$module_name.store", 'uses' => "$controller_name@store"]);
    Route::get("$module_name/{id}/edit", ['as' => "$module_name.edit", 'uses' => "$controller_name@edit"]);
    Route::get("$module_name/{id}/show", ['as' => "$module_name.show", 'uses' => "$controller_name@show"]);
    Route::patch("$module_name/{id}/update", ['as' => "$module_name.update", 'uses' => "$controller_name@update"]);
    Route::get("$module_name/{id}/destroy", ['as' => "$module_name.destroy", 'uses' => "$controller_name@destroy"]);

     /*
     *
     *  Youtubes Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'youtubes';
    $controller_name = 'YoutubeController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");

     /*
     *
     *  Tracks Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'tracks';
    $controller_name = 'TrackController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");

     /*
     *
     *  Galleries Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'galleries';
    $controller_name = 'GalleryController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");

    /*
     *
     *  Artists Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'artists';
    $controller_name = 'ArtistController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");

    /*
     *
     *  Parameters Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'parameters';
    $controller_name = 'ParameterController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");
    
    /*
     *
     *  Settings Routes
     *
     * ---------------------------------------------------------------------
     */
    Route::group(['middleware' => ['permission:edit_settings']], function () {
        $module_name = 'settings';
        $controller_name = 'SettingController';
        Route::get("$module_name", "$controller_name@index")->name("$module_name");
        Route::post("$module_name", "$controller_name@store")->name("$module_name.store");
    });

    /*
    *
    *  Notification Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'notifications';
    $controller_name = 'NotificationsController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/markAllAsRead", ['as' => "$module_name.markAllAsRead", 'uses' => "$controller_name@markAllAsRead"]);
    Route::delete("$module_name/deleteAll", ['as' => "$module_name.deleteAll", 'uses' => "$controller_name@deleteAll"]);
    Route::get("$module_name/{id}", ['as' => "$module_name.show", 'uses' => "$controller_name@show"]);

    /*
    *
    *  Backup Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'backups';
    $controller_name = 'BackupController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/create", ['as' => "$module_name.create", 'uses' => "$controller_name@create"]);
    Route::get("$module_name/download/{file_name}", ['as' => "$module_name.download", 'uses' => "$controller_name@download"]);
    Route::get("$module_name/delete/{file_name}", ['as' => "$module_name.delete", 'uses' => "$controller_name@delete"]);

    /*
    *
    *  Roles Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'roles';
    $controller_name = 'RolesController';
    Route::resource("$module_name", "$controller_name");

    /*
    *
    *  User PIC Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'pics';
    $controller_name = 'PICController';
    Route::get("$module_name/{id}", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/{id}/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/{id}/create", ['as' => "$module_name.create", 'uses' => "$controller_name@create"]);
    Route::patch("$module_name/{id}/store", ['as' => "$module_name.store", 'uses' => "$controller_name@store"]);
    Route::get("$module_name/{id}/edit", ['as' => "$module_name.edit", 'uses' => "$controller_name@edit"]);
    Route::patch("$module_name/{id}/update", ['as' => "$module_name.update", 'uses' => "$controller_name@update"]);
    Route::get("$module_name/{id}/destroy", ['as' => "$module_name.destroy", 'uses' => "$controller_name@destroy"]);


    /*
    *
    *  Users Routes
    *
    * ---------------------------------------------------------------------
    */
    $module_name = 'users';
    $controller_name = 'UserController';
    Route::get("$module_name/profile/{id}", ['as' => "$module_name.profile", 'uses' => "$controller_name@profile"]);
    Route::get("$module_name/profile/{id}/edit", ['as' => "$module_name.profileEdit", 'uses' => "$controller_name@profileEdit"]);
    Route::patch("$module_name/profile/{id}/edit", ['as' => "$module_name.profileUpdate", 'uses' => "$controller_name@profileUpdate"]);
    Route::get("$module_name/emailConfirmationResend/{id}", ['as' => "$module_name.emailConfirmationResend", 'uses' => "$controller_name@emailConfirmationResend"]);
    Route::delete("$module_name/userProviderDestroy", ['as' => "$module_name.userProviderDestroy", 'uses' => "$controller_name@userProviderDestroy"]);
    Route::get("$module_name/profile/changeProfilePassword/{id}", ['as' => "$module_name.changeProfilePassword", 'uses' => "$controller_name@changeProfilePassword"]);
    Route::patch("$module_name/profile/changeProfilePassword/{id}", ['as' => "$module_name.changeProfilePasswordUpdate", 'uses' => "$controller_name@changeProfilePasswordUpdate"]);
    Route::get("$module_name/changePassword/{id}", ['as' => "$module_name.changePassword", 'uses' => "$controller_name@changePassword"]);
    Route::patch("$module_name/changePassword/{id}", ['as' => "$module_name.changePasswordUpdate", 'uses' => "$controller_name@changePasswordUpdate"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::resource("$module_name", "$controller_name");
    Route::patch("$module_name/{id}/block", ['as' => "$module_name.block", 'uses' => "$controller_name@block", 'middleware' => ['permission:block_users']]);
    Route::patch("$module_name/{id}/unblock", ['as' => "$module_name.unblock", 'uses' => "$controller_name@unblock", 'middleware' => ['permission:block_users']]);
});