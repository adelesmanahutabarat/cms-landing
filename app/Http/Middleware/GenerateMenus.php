<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Str;

class GenerateMenus
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Label Sidebar
        \Menu::make('label_sidebar', function ($menu) {
            // Dashboard
            $menu->add('<i class="cil-speedometer c-sidebar-nav-icon"></i> Dashboard', [
                'route' => 'label.dashboard',
                'class' => 'c-sidebar-nav-item',
            ])
            ->data([
                'order'         => 1,
                'activematches' => 'label/dashboard*',
            ])
            ->link->attr([
                'class' => 'c-sidebar-nav-link',
            ]);
        })->sortBy('order');
        // Admin Sidebar
        \Menu::make('admin_sidebar', function ($menu) {
            // Dashboard
            $menu->add('<i data-feather="home"></i> Dashboard', [
                'route' => 'backend.dashboard',
            ])
            ->data([
                'order'         => 1,
                'activematches' => 'admin/dashboard*',
            ]);

            // Articles Dropdown
            $articles_menu = $menu->add('<i class="c-sidebar-nav-icon fas fa-file-alt"></i> Article <span class="menu-arrow"></span>', [
                'class' => 'c-sidebar-nav-dropdown',
            ])
            ->data([
                'order'         => 6,
                'activematches' => [
                    'admin/posts*',
                    'admin/categories*',
                ],
                'permission' => ['view_posts', 'view_categories'],
            ]);

            $articles_menu->link->attr([
                'class' => 'c-sidebar-nav-dropdown-toggle',
                'href'  => '#',
            ]);
                        
            // Submenu: Posts
            $articles_menu->add('<i class="c-sidebar-nav-icon fas fa-file-alt"></i> Posts', [
                'route' => 'backend.posts.index',
                'class' => 'c-sidebar-nav-item',
            ])
            ->data([
                'order'         => 82,
                'activematches' => 'admin/posts*',
                'permission'    => ['edit_posts'],
            ])
            ->link->attr([
                'class' => "c-sidebar-nav-link",
            ]);
            // Submenu: Categories
            $articles_menu->add('<i class="c-sidebar-nav-icon fas fa-sitemap"></i> Categories', [
                'route' => 'backend.categories.index',
                'class' => 'c-sidebar-nav-item',
            ])
            ->data([
                'order'         => 83,
                'activematches' => 'admin/categories*',
                'permission'    => ['edit_categories'],
            ])
            ->link->attr([
                'class' => "c-sidebar-nav-link",
            ]);
            // Tags
            // $menu->add('<i class="fas fa-tags c-sidebar-nav-icon"></i> Tags', [
            //     'route' => 'backend.tags.index',
            //     'class' => "c-sidebar-nav-item",
            // ])
            // ->data([
            //     'order' => 84,
            //     'activematches' => ['admin/tags*'],
            //     'permission' => ['view_tags'],
            // ])
            // ->link->attr([
            //     'class' => 'c-sidebar-nav-link',
            // ]);
            // comments
            // $menu->add('<i class="fas fa-comments c-sidebar-nav-icon"></i> Comments', [
            //     'route' => 'backend.comments.index',
            //     'class' => 'c-sidebar-nav-item',
            // ])
            // ->data([
            //     'order' => 85,
            //     'activematches' => ['admin/comments*'],
            //     'permission' => ['view_comments'],
            // ])
            // ->link->attr([
            //     'class' => 'c-sidebar-nav-link',
            // ]);

            // Youtubes
            $menu->add('<i data-feather="youtube"></i> Youtube', [
                'route' => 'backend.youtubes.index',
            ])
            ->data([
                'order'         => 3,
                'activematches' => 'admin/youtubes*',
                'permission'    => ['view_youtubes'],
            ]);

            // Tracks
            $menu->add('<i data-feather="disc"></i> Track', [
                'route' => 'backend.tracks.index',
            ])
            ->data([
                'order'         => 4,
                'activematches' => 'admin/tracks*',
                'permission'    => ['view_tracks'],
            ]);

            // Galleries
            $menu->add('<i data-feather="image"></i> Gallery', [
                'route' => 'backend.galleries.index',
            ])
            ->data([
                'order'         => 5,
                'activematches' => 'admin/galleries*',
                'permission'    => ['view_galleries'],
            ]);

            // Artists
            $menu->add('<i data-feather="users"></i> Artist', [
                'route' => 'backend.artists.index',
            ])
            ->data([
                'order'         => 5,
                'activematches' => 'admin/artists*',
                'permission'    => ['view_artists'],
            ]);

            // Sosmeds
            $menu->add('<i data-feather="share-2"></i> Sosmed', [
                'route' => 'backend.sosmeds.index',
            ])
            ->data([
                'order'         => 7,
                'activematches' => 'admin/sosmeds*',
                'permission'    => ['view_sosmeds'],
            ]);
                        
            // Notifications
            // $menu->add('<i data-feather="bell"></i> Notifications', [
            //     'route' => 'backend.notifications.index',
            // ])
            // ->data([
            //     'order'         => 99,
            //     'activematches' => 'admin/notifications*',
            //     'permission'    => [],
            // ]);

            // Separator: Access Management
            $menu->add('Management', [
                'class' => 'menu-title',
            ])
            ->data([
                'order'         => 101,
                'permission'    => ['edit_settings', 'view_backups', 'view_users', 'view_roles', 'view_logs'],
            ]);

            // Settings
            $menu->add('<i data-feather="settings"></i> Settings', [
                'route' => 'backend.settings',
            ])
            ->data([
                'order'         => 102,
                'activematches' => 'admin/settings*',
                'permission'    => ['edit_settings'],
            ]);

            // Parameters
            $menu->add('<i data-feather="airplay"></i> Parameter', [
                'route' => 'backend.parameters.index',
            ])
            ->data([
                'order'         => 103,
                'activematches' => 'admin/parameters*',
                'permission'    => ['view_parameters'],
            ]);
                        
            // Backup
            $menu->add('<i data-feather="archive"></i> Backups', [
                'route' => 'backend.backups.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 103,
                'activematches' => 'admin/backups*',
                'permission'    => ['view_backups'],
            ]);

            // Access Control Dropdown
            $accessControl = $menu->add('<i data-feather="shield"></i> Access Control<span class="menu-arrow"></span>', [
                'class' => '',
            ])
            ->data([
                'order'         => 104,
                'activematches' => [
                    'admin/users*',
                    'admin/roles*',
                ],
                'permission'    => ['view_users', 'view_roles'],
            ]);
            $accessControl->link->attr([
                'class' => 'c-sidebar-nav-dropdown-toggle',
                'href'  => '#',
            ]);

            // Submenu: Users
            $accessControl->add('Users', [
                'route' => 'backend.users.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 105,
                'activematches' => 'admin/users*',
                'permission'    => ['view_users'],
            ])
            ->link->attr([
                'class' => 'c-sidebar-nav-link',
            ]);

            // Submenu: Roles
            $accessControl->add('Roles', [
                'route' => 'backend.roles.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 106,
                'activematches' => 'admin/roles*',
                'permission'    => ['view_roles'],
            ])
            ->link->attr([
                'class' => 'c-sidebar-nav-link',
            ]);

            // Log Viewer
            // Log Viewer Dropdown
            $accessControl = $menu->add('<i data-feather="list"></i> Log Viewer <span class="menu-arrow"></span>', [
                'class' => 'c-sidebar-nav-dropdown',
            ])
            ->data([
                'order'         => 107,
                'activematches' => [
                    'log-viewer*',
                ],
                'permission'    => ['view_logs'],
            ]);
            $accessControl->link->attr([
                'class' => 'c-sidebar-nav-dropdown-toggle',
                'href'  => '#',
            ]);

            // Submenu: Log Viewer Dashboard
            $accessControl->add('Dashboard', [
                'route' => 'log-viewer::dashboard',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 108,
                'activematches' => 'admin/log-viewer',
            ])
            ->link->attr([
                'class' => 'c-sidebar-nav-link',
            ]);

            // Submenu: Log Viewer Logs by Days
            $accessControl->add('Logs by Days', [
                'route' => 'log-viewer::logs.list',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 109,
                'activematches' => 'admin/log-viewer/logs*',
            ])
            ->link->attr([
                'class' => 'c-sidebar-nav-link',
            ]);

            // Access Permission Check
            $menu->filter(function ($item) {
                if ($item->data('permission')) {
                    if (auth()->check()) {
                        if (auth()->user()->hasRole('super admin')) {
                            return true;
                        } elseif (auth()->user()->hasAnyPermission($item->data('permission'))) {
                            return true;
                        }
                    }

                    return false;
                } else {
                    return true;
                }
            });

            // Set Active Menu
            $menu->filter(function ($item) {
                if ($item->activematches) {
                    $matches = is_array($item->activematches) ? $item->activematches : [$item->activematches];

                    foreach ($matches as $pattern) {
                        if (Str::is($pattern, \Request::path())) {
                            $item->activate();
                            $item->active();
                            if ($item->hasParent()) {
                                $item->parent()->activate();
                                $item->parent()->active();
                            }
                            // dd($pattern);
                        }
                    }
                }

                return true;
            });
        })->sortBy('order');

        return $next($request);
    }
}