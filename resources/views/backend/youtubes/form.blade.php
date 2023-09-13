<div class="row">
    <div class="">
        <div class="col-12">
            <div class="form-group">
                <div class="input-group mb-3">
                    @if($$module_name_singular->image ?? '')
                    <img src="{{ asset('storage/artwork/'.$$module_name_singular->image) }}"
                        class="user-profile-image img-fluid img-thumbnail float-right ml-5"
                        style="max-height:275px; max-width:275px;">
                    @else
                    <img src="{{ asset('storage/artwork/default.jpg') }}"
                        class="user-profile-image img-fluid img-thumbnail float-right ml-5"
                        style="max-height:275px; max-width:275px;">
                    @endif
                </div>

                <!-- <div class="input-group mb-3">
                    <span class="text-danger text-justify"> Resolusi 400 x 400</span>
                </div> -->
            </div>
        </div>
    </div>
    <div class="col">
        <div class="row">
            <div class="col-10">
                <div class="form-group">
                    {{ html()->label('Title')->class('form-control-label')->for('title') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="title"
                            value="{{ $$module_name_singular->title ?? '' }}">
                    </div>
                </div>
            </div>

            <div class="col-2">
                <div class="form-group">
                    {{ html()->label('Position')->class('form-control-label')->for('postion') }}
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" name="position"
                            value="{{ $$module_name_singular->position ?? '' }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-9">
                <div class="form-group">
                    {{ html()->label('URL')->class('form-control-label')->for('url') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="url"
                            value="{{ $$module_name_singular->url ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    {{ html()->label(__('pics.backend.users.fields.landing'))->class('form-control-label')->for('landing') }}
                    <select class="form-control landing-id" name="landing" id="landing" required="">
                        <option value="">Pilih</option>
                        @foreach($landings as $item)
                        @if(($$module_name_singular->landing ?? '') == $item->parameter->param_key)
                        <option value="{{ $item->parameter->param_key }}" selected>{{ $item->parameter->param_text }}
                        </option>
                        @else
                        <option value="{{ $item->parameter->param_key }}">{{ $item->parameter->param_text }}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-8">
                <div class="form-group">
                    {{ html()->label('Release Date')->class('form-control-label')->for('release_date') }}
                    <div class="input-group mb-3">
                        <input type="date" class="form-control" name="release_date"
                            value="{{ $$module_name_singular->release_date ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group hide">
                    {{ html()->label('Art Work')->class('form-control-label')->for('file') }}
                    {{ html()->file('image')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                 }}
                </div>
            </div>
        </div>
    </div>
</div>