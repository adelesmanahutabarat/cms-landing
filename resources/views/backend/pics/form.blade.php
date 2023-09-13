<div class="form-group">
    {{ html()->label(__('pics.backend.users.fields.landing'))->class('form-control-label')->for('landing') }}
    <select class="form-control landing-id" name="landing_id" id="landing_id" required="">
        <option value="">Pilih</option>
        @foreach($landings as $item)
        @if(($$module_name_singular->landing_id??'') == $item->id)
        <option value="{{ $item->id }}" selected>{{ $item->param_text }}</option>
        @else
        <option value="{{ $item->id }}">{{ $item->param_text }}</option>
        @endif
        @endforeach
    </select>
</div>

@push('after-styles')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush
@push('after-scripts')
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.landing-id').select2();
    });
</script>
@endpush