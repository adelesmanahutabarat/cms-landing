<div class="row">
    <div class="col col-sm-12">
        <div class="row">
            <div class="col-8">
                <div class="form-group">
                    {{ html()->label('Account Name')->class('form-control-label')->for('account_name') }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="account_name"
                            value="{{ $$module_name_singular->account_name ?? '' }}">
                    </div>
                </div>
            </div>
            <div class="col-2">
                <div class="form-group">
                    {{ html()->label('Platform')->class('form-control-label')->for('platform') }}
                    <div class="input-group mb-3">
                        <select class="form-control platform-id" name="platform" id="platform" required="">
                            <option value="">Pilih</option>
                            @foreach($platforms as $item)
                            @if(($$module_name_singular->platform ?? '') == $item->param_key)
                            <option value="{{ $item->param_key }}" selected>
                                {{ $item->param_text }}
                            </option>
                            @else
                            <option value="{{ $item->param_key }}">
                                {{ $item->param_text }}
                            </option>
                            @endif
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-2">
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
    </div>
</div>