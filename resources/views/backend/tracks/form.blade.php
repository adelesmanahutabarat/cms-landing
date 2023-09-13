<div class="row">
    <div class="col col-sm-3">
        <div class="input-group">
            @if($$module_name_singular->artwork ?? '')
            <img src="{{ $track->artwork_url }}"
                class="user-profile-image img-fluid img-thumbnail float-right"
                style="max-height:260px; max-width:260px;">
            @else
            <img src="{{ asset('storage/artwork/default.jpg') }}"
                class="user-profile-image img-fluid img-thumbnail float-right"
                style="max-height:275px; max-width:275px;">
            @endif
        </div>
    </div>

    <div class="col col-sm-9">
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
                    {{ html()->label('Position')->class('form-control-label')->for('position') }}
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" name="position"
                            value="{{ $$module_name_singular->position ?? '' }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-6">
                <div class="form-group">
                    {{ html()->label('Link Shop')->class('form-control-label')->for('link_shop') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="link_shop"
                            value="{{ $$module_name_singular->link_shop ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    {{ html()->label('Release Date')->class('form-control-label')->for('release_date') }}
                    <div class="input-group mb-3">
                        <input type="date" class="form-control" name="release_date"
                            value="{{ $$module_name_singular->release_date ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    {{ html()->label('Landing')->class('form-control-label')->for('landing') }}
                    <div class="input-group mb-3">
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
            </div>
        </div>

        <div class="row hide">
            <div class="col-3">
                <div class="form-group">
                    {{ html()->label('Music')->class('form-control-label')->for('audio') }}
                    <input type="file" class="form-control" maxlength="191" name="audio"
                        {{ $module_action == 'Create' ? "required" : "" }}>
                </div>
            </div>
            <div class="col-3">
                <div class="form-group">
                    {{ html()->label('Art Work 148 x 148')->class('form-control-label')->for('artwork') }}
                    <input type="file" class="form-control" maxlength="191" name="artwork"
                        {{ $module_action == 'Create' ? "required" : "" }}>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    {{ html()->label('Singer')->class('form-control-label')->for('singer') }}
                    <div class="input-group mb-3">
                        <select class="form-control artist_id" name="artist_id" id="artist_id" required="">
                            <option value="">Pilih</option>
                            @foreach($artists as $item)
                            @if(($$module_name_singular->artist_id ?? '') == $item->id)
                            <option value="{{ $item->id }}" selected>
                                {{ $item->name }}
                            </option>
                            @else
                            <option value="{{ $item->id }}">{{ $item->name }}
                            </option>
                            @endif
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="form-group">
                    <audio controls class="right-width">
                        {{ $music = $$module_name_singular->audio ?? '' }}
                        <source src="{{ asset('storage/audio/'. $music) }}" type="audio/ogg" />
                        <source src="{{ asset('storage/audio/'. $music) }}" type="audio/mpeg" />
                        Your browser does not support the <code>audio</code> element.
                    </audio>
                </div>
            </div>
        </div>

    </div>
</div>