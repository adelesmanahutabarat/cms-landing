<div class="text-right">
    @can('edit_'.$module_name)
    <x-buttons.edit route='{!!route("backend.$module_name.edit", $data)!!}'
        title="{{__('Edit')}} {{ ucwords(Str::singular($module_name)) }}" small="true" />
    @endcan
    @can('delete_'.$module_name)
    <x-buttons.delete route='{!!route("backend.$module_name.destroy", $data)!!}'
        title="{{__('Delete')}} {{ ucwords(Str::singular($module_name)) }}" small="true" />
    @endcan
</div>
