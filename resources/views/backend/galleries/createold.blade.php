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
                {{ html()->form('POST', route('backend.galleries.store'))->attribute('enctype','multipart/form-data')->class('form-horizontal')->open() }}
                {{ csrf_field() }}

                <!-- Row 1 -->
                <div class="row mt-4">
                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('1. 460 x 386')->class('form-control-label')->for('image1') }}
                            {{ html()->file('image1')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                        </div>
                        <br>
                        <img src="{{ asset('storage/galleries/'.$galleries[0]->image) }}"
                            class="user-profile-image img-fluid img-thumbnail"
                            style="max-height:200px; max-width:200px;">
                    </div>

                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('2. 656 x 386')->class('form-control-label')->for('image2') }}
                            {{ html()->file('image2')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                        </div>
                        <br>
                        <img src="{{ asset('storage/galleries/'.$galleries[1]->image) }}"
                            class="user-profile-image img-fluid img-thumbnail"
                            style="max-height:200px; max-width:200px;">
                    </div>
                </div>

                <!-- Row 2 -->
                <div class="row mt-4">
                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('3. 362 x 350')->class('form-control-label')->for('image3') }}
                            {{ html()->file('image3')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                        </div>
                        <br>
                        <img src="{{ asset('storage/galleries/'.$galleries[2]->image) }}"
                            class="user-profile-image img-fluid img-thumbnail"
                            style="max-height:200px; max-width:200px;">
                    </div>

                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('4. 362 x 350')->class('form-control-label')->for('image4') }}
                            {{ html()->file('image4')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                        </div>
                        <br>
                        <img src="{{ asset('storage/galleries/'.$galleries[3]->image) }}"
                            class="user-profile-image img-fluid img-thumbnail"
                            style="max-height:200px; max-width:200px;">
                    </div>
                </div>

                <!-- Row 3 -->
                <div class="row mt-4">
                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('5. 362 x 350')->class('form-control-label')->for('image5') }}
                            {{ html()->file('image5')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                        </div>
                        <br>
                        <img src="{{ asset('storage/galleries/'.$galleries[4]->image) }}"
                            class="user-profile-image img-fluid img-thumbnail"
                            style="max-height:200px; max-width:200px;">
                    </div>

                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('6. 1919 x 1075')->class('form-control-label')->for('image6') }}
                            {{ html()->file('image6')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                }}
                            <br>
                            <img src="{{ asset('storage/galleries/'.$galleries[5]->image) }}"
                                class="user-profile-image img-fluid img-thumbnail"
                                style="max-height:200px; max-width:200px;">
                        </div>
                    </div>
                </div>
                
                <br>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <x-buttons.create title="{{__('Create')}} {{ ucwords(Str::singular($module_name)) }}">
                                {{__('Create')}}
                            </x-buttons.create>
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