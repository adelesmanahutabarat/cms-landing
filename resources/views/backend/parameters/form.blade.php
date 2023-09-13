                <!-- Row 1 -->
                <div class="row mt-4">
                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('Parameter Group')->class('form-control-label')->for('param_group') }}
                            <select class="form-control param-group" name="param_group" id="param_group" required="">
                                <option value="">Pilih</option>
                                @foreach($param_groups as $item)
                                @if(($$module_name_singular->param_group??'') == $item->param_group)
                                <option value="{{ $item->param_group }}" selected>{{ $item->param_group }}</option>
                                @else
                                <option value="{{ $item->param_group }}">{{ $item->param_group }}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>
                        <br>
                    </div>

                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('Param Key')->class('form-control-label')->for('param_key') }}
                            {{ html()->text('param_key')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                ->value($$module_name_singular->param_key ?? '')
                                ->required()}}
                        </div>
                        <br>
                    </div>
                </div>

                <!-- Row 2 -->
                <div class="row">
                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('Param Text')->class('form-control-label')->for('param_text') }}
                            {{ html()->text('param_text')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                ->value($$module_name_singular->param_text ?? '')
                                ->required()}}
                        </div>
                        <br>
                    </div>

                    <div class="col md-6">
                        <div class="form-group">
                            {{ html()->label('Param Memo')->class('form-control-label')->for('param_memo')}}
                            {{ html()->text('param_memo')
                                ->class('form-control')
                                ->attribute('maxlength', 191)
                                ->value($$module_name_singular->param_memo ?? '')}}
                        </div>
                        <br>
                    </div>
                </div>


<script>
    $(document).ready(function() {
        $('.param-group').select2();
    });
</script>