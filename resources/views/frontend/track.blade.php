@extends ('frontend.layouts.app')


@section('style')
<style>
    .contact_rsvp{
        display: none;
    }
</style>
@endsection

@section('content')
<!-- bradcam_area  -->
<div class="bradcam_area breadcam_bg_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>Our Tracks</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<!-- music_area  -->
<div class="music_area music_gallery">
    <div class="container">
        @foreach($tracks as $item)
        <div class="row align-items-center justify-content-center mb-20">
            <div class="col-xl-10">
                <div class="row align-items-center">
                    <div class="col-xl-9 col-md-9">
                        <div class="music_field">
                            <div class="thumb">
                                <img src="{{ asset('storage/artwork/'.$item->artwork) }}" alt="">
                            </div>
                            <div class="audio_name">
                                <div class="name">
                                    <h4>{{ $item->title }}</h4>
                                    <p>{{ date('d F Y', strtotime($item->release_date)) }}</p>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="{{ asset('storage/audio/'.$item->audio) }}">
                                </audio>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-3">
                        <div class="music_btn">
                            <a href="{{ $item->link_shop }}" class="boxed-btn">Beli Album</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
<!-- music_area end  -->

<!-- youtube_video_area  -->
<div class="youtube_video_area">
    <div class="container-fluid p-0">
        <div class="row no-gutters">
            @foreach($youtubes as $item)
            <div class="col-xl-3 col-lg-3 col-md-6">
                <div class="single_video">
                    <div class="thumb">
                        <img src="{{ asset('storage/artwork/'.$item->image) }}" alt="">
                    </div>
                    <div class="hover_elements">
                        <div class="video">
                            <a class="popup-video" href="{{ 'https://www.youtube.com/watch?v='.$item->url}}">
                                <i class="fa fa-play"></i>
                            </a>
                        </div>

                        <div class="hover_inner">
                            <span>{{ date('d F Y', strtotime($item->release_date)) }}</span>
                            <h3><a href="#">{{ $item->title }}</a></h3>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- / youtube_video_area  -->

@endsection