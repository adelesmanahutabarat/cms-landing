<div class="row">
    <div class="col col-sm-3">
        <div class="input-group">
            @if($$module_name_singular->image_url ?? '')
            <img src="{{ $$module_name_singular->image_url }}"
                class="user-profile-image img-fluid img-thumbnail float-right"
                style="max-height:260px; max-width:260px;">
            @else
            <img src="{{ asset('storage/galleries/default.jpg') }}"
                class="user-profile-image img-fluid img-thumbnail float-right"
                style="max-height:275px; max-width:275px;">
            @endif
        </div>
    </div>

    <div class="col col-sm-9">
        <div class="row">
            <div class="col-10">
                <div class="form-group">
                    {{ html()->label('Name')->class('form-control-label')->for('name') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="name"
                            value="{{ $$module_name_singular->name ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-2">
                <div class="form-group">
                    {{ html()->label('Position')->class('form-control-label')->for('position') }}
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" name="position"
                            value="{{ $$module_name_singular->position ?? '' }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    {{ html()->label('Bio')->class('form-control-label')->for('bio') }}

                    <textarea class="form-control" name="bio">
                    {{ $$module_name_singular->bio ?? null}}
</textarea>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-4 hide">
                <div class="form-group">
                    {{ html()->label('Image')->class('form-control-label')->for('image') }}
                    <input type="file" class="form-control" maxlength="191" name="image"
                        {{ $module_action == 'Create' ? "required" : "" }}>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group">
                    {{ html()->label('Landing')->class('form-control-label')->for('landing') }}
                    <select class="form-control landing-id" name="landing" id="landing" required="">
                        <option value="">Pilih</option>
                        @foreach($landings as $item)
                        @if(($$module_name_singular->landing ?? '') == $item->parameter->param_key)
                        <option value="{{ $item->parameter->param_key }}" selected>
                            {{ $item->parameter->param_text }}
                        </option>
                        @else
                        <option value="{{ $item->parameter->param_key }}">{{ $item->parameter->param_text }}
                        </option>
                        @endif
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group">
                    {{ html()->label('Spotify')->class('form-control-label')->for('spotify_embed') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="spotify_embed"
                            value="{{ $$module_name_singular->spotify_embed ?? '' }}">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>