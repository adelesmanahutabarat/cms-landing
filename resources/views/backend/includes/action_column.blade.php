<div class="row text-right">
    <x-buttons.show route='{!!route("backend.$module_name.show", $data)!!}'
        title="{{__('Show')}} {{ ucwords(Str::singular($module_name)) }}" small="true" class="mr-1"/> 
    @can('edit_'.$module_name)
    <x-buttons.edit route='{!!route("backend.$module_name.edit", $data)!!}'
        title="{{__('Edit')}} {{ ucwords(Str::singular($module_name)) }}" small="true"/>
    @endcan
</div>
