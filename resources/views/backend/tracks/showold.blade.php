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
                    <small class="text-muted">{{ __('labels.backend.users.show.action') }} </small>
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
                {{ html()->form('PATCH', route('backend.tracks.update', $$module_name_singular->id))->attribute('enctype','multipart/form-data')->class('form-horizontal')->open() }}
                {{ csrf_field() }}

                <div class="form-group">
                    {{ html()->label('Title')->class('form-control-label')->for('title') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="title" value="{{ $track->title }}">
                    </div>
                </div>

                <div class="form-group">
                    {{ html()->label('Link Shop')->class('form-control-label')->for('link_shop') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="link_shop" value="{{ $track->link_shop }}">
                    </div>
                </div>

                <div class="form-group">
                    {{ html()->label('Release Date')->class('form-control-label')->for('release_date') }}
                    <div class="input-group mb-3">
                        <input type="date" class="form-control" name="release_date" value="{{ $track->release_date }}">
                    </div>
                </div>

                <div class="form-group">
                    <audio controls >
                        <source src="{{ asset('storage/audio/'.$track->audio) }}" type="audio/ogg">
                        <source src="{{ asset('storage/audio/'.$track->audio) }}" type="audio/mpeg">
                        Your browser does not support the audio tag.
                    </audio>
                </div>

                <div class="form-group">
                    <img src="{{ asset('storage/artwork/'.$track->artwork) }}"
                        class="user-profile-image img-fluid img-thumbnail" style="max-height:200px; max-width:200px;">
                </div>
                <!-- 
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <x-buttons.update title="{{__('Update')}} {{ ucwords(Str::singular($module_name)) }}">
                                {{__('Update')}}
                            </x-buttons.update>
                        </div>
                    </div>
                </div> -->
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