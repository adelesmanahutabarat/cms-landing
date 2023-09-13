<div class="row">
    <div class="col col-sm-3">
        <div class="input-group">
            @if($$module_name_singular->image ?? '')
            <img src="{{ $$module_name_singular->image }}"
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
            <div class="col-4 hide">
                <div class="form-group">
                    {{ html()->label('Image')->class('form-control-label')->for('image') }}
                    <input type="file" class="form-control" maxlength="191" name="image"
                        {{ $module_action == 'Create' ? "required" : "" }}>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group">
                    {{ html()->label('Category')->class('form-control-label')->for('category') }}
                    <select class="form-control" name="category" id="category" required="">
                        <option value="">Pilih</option>
                        @foreach($categories as $item)
                        @if(($$module_name_singular->category ?? '') == $item->param_key)
                        <option value="{{ $item->param_key }}" selected>
                            {{ $item->param_text }}
                        </option>
                        @else
                        <option value="{{ $item->param_key }}">{{ $item->param_text }}
                        </option>
                        @endif
                        @endforeach
                    </select>
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
        </div>
    </div>
</div>