<div class="c-sidebar c-sidebar-dark c-sidebar-fixed c-sidebar-lg-show" id="sidebar">
    <div class="c-sidebar-brand"> <a href="{{route("backend.dashboard")}}" class="text-white h5"><span class="c-sidebar-brand-full">{{app_name()}}</span><span class="c-sidebar-brand-minimized">WP</span></a> </div>

    {!! $admin_sidebar->asUl( ['class' => 'c-sidebar-nav'], ['class' => 'c-sidebar-nav-dropdown-items'] ) !!}

    <button class="c-sidebar-minimizer c-class-toggler" type="button" data-target="_parent" data-class="c-sidebar-minimized"></button>
</div>
