@extends('layouts.vertical')

@section('title') {{ __($module_action) }} {{ $module_title }} @endsection

@section('breadcrumb')
<x-backend-breadcrumbs>
    <x-backend-breadcrumb-item route='{{route("backend.$module_name.index")}}' icon='{{ $module_icon }}'>
        {{ $module_title }}
    </x-backend-breadcrumb-item>

    <x-backend-breadcrumb-item type="active">{{ __($module_action) }}</x-backend-breadcrumb-item>
</x-backend-breadcrumbs>
@endsection

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col">
                <h4 class="card-title mb-0">
                    <i class="{{$module_icon}}"></i> {{ $module_title }}
                    <small class="text-muted">{{ __('labels.backend.users.create.action') }} </small>
                </h4>
                <div class="small text-muted">
                    {{ $module_title }} Management
                </div>
            </div>
            <!--/.col-->
            <div class="col-4">
                <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                    <x-buttons.return-back />
                </div>
            </div>
            <!--/.col-->
        </div>
        <!--/.row-->

        <hr>

        <div class="row mt-4">
            <div class="col">
                {{ html()->form('PATCH', route('backend.youtubes.update', $$module_name_singular->id))->attribute('enctype','multipart/form-data')->class('form-horizontal')->open() }}
                {{ csrf_field() }}

                <div class="row">
                    <div class="col-3">
                        <div class="container ml-5">
                            <img src="{{ asset('storage/artwork/'.$$module_name_singular->image) }}"
                                class="user-profile-image img-fluid img-thumbnail"
                                style="max-height:200px; max-width:200px;">

                        </div>
                    </div>

                    <div class="col-9">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <td>Title</td>
                                    <td>:</td>
                                    <td>{{ $$module_name_singular->title }}</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>:</td>
                                    <td>{{ $$module_name_singular->position }}</td>
                                </tr>
                                <tr>
                                    <td>URL</td>
                                    <td>:</td>
                                    <td>{{ $$module_name_singular->url }}</td>
                                </tr>
                                <tr>
                                    <td>Landing</td>
                                    <td>:</td>
                                    <td>{{ $$module_name_singular->landing }}</td>
                                </tr>
                                <tr>
                                    <td>Release Date</td>
                                    <td>:</td>
                                    <td>{{ $$module_name_singular->release_date }}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>


                {{ html()->form()->close() }}
            </div>
        </div>

    </div>

    <div class="card-footer">
        <div class="row">
            <div class="col">
                <small class="float-right text-muted">

                </small>
            </div>
        </div>
    </div>
</div>

@endsection

@push ('after-scripts')

@endpush