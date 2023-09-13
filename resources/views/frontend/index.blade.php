@extends ('frontend.layouts.app')

@section('style')
<style>
.slider_bg_1 {
    background-image: url("{{ asset('storage/img_banner/'.$header->img_banner)}}");
}
</style>
@endsection

@section('content')

<!-- slider_area_start -->
<div class="slider_area">
    <div class="single_slider  d-flex align-items-center slider_bg_1 overlay2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="slider_text text-center ">
                        <h3>KANGEN BAND</h3>
                        <!-- <h3>BAND </h3> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider_area_end -->

<!-- music_area  -->
<div class="music_area">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-xl-10">
                <div class="row align-items-center">
                    <div class="col-xl-9 col-md-9">
                        <div class="music_field">
                            <div class="thumb">
                                <img src="{{ asset('storage/artwork/'.$track->artwork) }}" alt="">
                            </div>
                            <div class="audio_name">
                                <div class="name">
                                    <h4>{{ $track->title }}</h4>
                                    <p>{{ date('d F Y', strtotime($track->release_date)) }}</p>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="{{ asset('storage/audio/'.$track->audio) }}">
                                </audio>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-3">
                        <div class="music_btn">
                            <a href="{{ $track->link_shop }}" class="boxed-btn">Beli Album</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- music_area end  -->

<br>

<!-- News -->
<div class="pt-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title text-center mb-65">
                    <h3>Postingan Terbaru</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <article class="blog_item">
                    @php
                    $i = 0;
                    $details_url = route("frontend.posts.show",[$posts[$i]->slug]);
                    @endphp

                    <div class="blog_item_img">
                        <img class="card-img rounded-0" src="{{ asset($posts[$i]->featured_image) }}" alt="">
                        <a href="#" class="blog_item_date">
                            <h3>{{ date_format($posts[$i]->published_at,"d") }}</h3>
                            <p>{{ date_format($posts[$i]->published_at,"M") }}</p>
                        </a>
                    </div>

                    <div class="blog_details">
                        <a class="d-inline-block" href="{{ $details_url }}">
                            <h2>{{ $posts[$i]->name }}</h2>
                        </a>
                        <p>{{ $posts[$i]->intro }} <strong> <a href="#"> Selengkapnya . . . </a></strong> </p>


                        <ul class="blog-info-link">
                            <li><a href="#"><i class="fa fa-user"></i> {{ $posts[$i]->category_name }},
                                    {{ $posts[$i]->created_by_alias }}</a></li>
                        </ul>
                    </div>
                </article>
            </div>
            <div class="col">

                @php
                $j = 1;
                $details_url = route("frontend.posts.show",[$posts[$j]->slug]);
                @endphp

                <article class="blog_item">
                    <div class="blog_item_img">
                        <img class="card-img rounded-0" src="{{ asset($posts[$j]->featured_image) }}" alt="">
                        <a href="#" class="blog_item_date">
                            <h3>{{ date_format($posts[$j]->published_at,"d") }}</h3>
                            <p>{{ date_format($posts[$j]->published_at,"M") }}</p>
                        </a>
                    </div>

                    <div class="blog_details">
                        <a class="d-inline-block" href="{{ $details_url }}">
                            <h2>{{ $posts[$j]->name }}</h2>
                        </a>
                        <p>{{ $posts[$j]->intro }} <strong> <a href="#"> Selengkapnya . . . </a></strong> </p>


                        <ul class="blog-info-link">
                            <li><a href="#"><i class="fa fa-user"></i> {{ $posts[$j]->category_name }},
                                    {{ $posts[$j]->created_by_alias }}</a></li>
                        </ul>
                    </div>
                </article>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <article class="blog_item">
                    @php
                    $i = 2;
                    $details_url = route("frontend.posts.show",[$posts[$i]->slug]);
                    @endphp

                    <div class="blog_item_img">
                        <img class="card-img rounded-0" src="{{ asset($posts[$i]->featured_image) }}" alt="">
                        <a href="#" class="blog_item_date">
                            <h3>{{ date_format($posts[$i]->published_at,"d") }}</h3>
                            <p>{{ date_format($posts[$i]->published_at,"M") }}</p>
                        </a>
                    </div>

                    <div class="blog_details">
                        <a class="d-inline-block" href="{{ $details_url }}">
                            <h2>{{ $posts[$i]->name }}</h2>
                        </a>
                        <p>{{ $posts[$i]->intro }} <strong> <a href="#"> Selengkapnya . . . </a></strong> </p>


                        <ul class="blog-info-link">
                            <li><a href="#"><i class="fa fa-user"></i> {{ $posts[$i]->category_name }},
                                    {{ $posts[$i]->created_by_alias }}</a></li>
                        </ul>
                    </div>
                </article>
            </div>
            <div class="col">

                @php
                $j = 3;
                $details_url = route("frontend.posts.show",[$posts[$j]->slug]);
                @endphp

                <article class="blog_item">
                    <div class="blog_item_img">
                        <img class="card-img rounded-0" src="{{ asset($posts[$j]->featured_image) }}" alt="">
                        <a href="#" class="blog_item_date">
                            <h3>{{ date_format($posts[$j]->published_at,"d") }}</h3>
                            <p>{{ date_format($posts[$j]->published_at,"M") }}</p>
                        </a>
                    </div>

                    <div class="blog_details">
                        <a class="d-inline-block" href="{{ $details_url }}">
                            <h2>{{ $posts[$j]->name }}</h2>
                        </a>
                        <p>{{ $posts[$j]->intro }} <strong> <a href="#"> Selengkapnya . . . </a></strong> </p>


                        <ul class="blog-info-link">
                            <li><a href="#"><i class="fa fa-user"></i> {{ $posts[$j]->category_name }},
                                    {{ $posts[$j]->created_by_alias }}</a></li>
                        </ul>
                    </div>
                </article>
            </div>
        </div>

    </div>
</div>

<!-- about_area  -->
<div class="about_area">
    <div class="container">
    <!-- <div class="row">
            <div class="col-xl-12">
                <div class="section_title text-center mb-65">
                    <h3>Berita Terbaru</h3>
                </div>
            </div>
        </div> -->
        
        <div class="row align-items-center">
            <div class="col-xl-5 col-md-6">
                <div class="about_thumb">
                    <img class="img-fluid" src="{{ asset('assets_front/img/about/andika.png') }}" alt="">
                </div>
            </div>
            <div class="col-xl-7 col-md-6">
                <div class="about_info">
                    <h3>Andika Kangen Band</h3>
                    <p>Semoga kami (Kangen Band) dengan Wahana Media Entertainment dapat menciptakan karya-karya yang
                        lebih bagus lagi. Untuk para fans kangen band, pantengin terus channel kita di <a
                            href="https://www.youtube.com/channel/UCGx_8w3WQpD2lbVLt53-BYA" target="_blank">Kangen Band
                            Official.</a> Jangan lupa bagikan karya kami untuk kerabat dan teman-teman kamu yaa.</p>
                    <div class="signature">
                        <!-- <img src="{{ asset('assets_front/img/about/signature.png') }}" alt=""> -->
                        <img src="{{ asset('assets_front/img/logo.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ about_area  -->

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

<!-- music_area  -->
<div class="music_area music_gallery">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title text-center mb-65">
                    <h3>Rilisan Terbaru</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                @for ($i = 0; $i < 3; $i++) <div class="row align-items-center justify-content-center mb-20">
                    <div class="col-xl-12">
                        <div class="row align-items-center">
                            <div class="col-xl-12 col-md-12">
                                <div class="music_field">
                                    <div class="thumb">
                                        <img src="{{ asset('storage/artwork/'.$tracks[$i]->artwork) }}" alt="">
                                    </div>
                                    <div class="audio_name">
                                        <div class="name">
                                            <h4>{{ $tracks[$i]->title }}</h4>
                                            <p>{{ date('d F Y', strtotime($tracks[$i]->release_date)) }}</p>
                                        </div>
                                        <audio preload="auto" controls>
                                            <source src="{{ asset('storage/audio/'.$tracks[$i]->audio) }}">
                                        </audio>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-xl-3 col-md-3">
                                <div class="music_btn">
                                    <a href="{{ $item->link_shop }}" class="boxed-btn">Beli Album</a>
                                </div>
                            </div> -->
                        </div>
                    </div>
            </div>
            @endfor
        </div>

        <div class="col">
            @for ($i = 0; $i < 3; $i++) <div class="row align-items-center justify-content-center mb-20">
                <div class="col-xl-12">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="music_field">
                                <div class="thumb">
                                    <img src="{{ asset('storage/artwork/'.$tracks[$i]->artwork) }}" alt="">
                                </div>
                                <div class="audio_name">
                                    <div class="name">
                                        <h4>{{ $tracks[$i]->title }}</h4>
                                        <p>{{ date('d F Y', strtotime($tracks[$i]->release_date)) }}</p>
                                    </div>
                                    <audio preload="auto" controls>
                                        <source src="{{ asset('storage/audio/'.$tracks[$i]->audio) }}">
                                    </audio>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-xl-3 col-md-3">
                                <div class="music_btn">
                                    <a href="{{ $item->link_shop }}" class="boxed-btn">Beli Album</a>
                                </div>
                            </div> -->
                    </div>
                </div>
        </div>
        @endfor
    </div>
</div>


</div>
</div>
<!-- music_area end  -->

<!-- gallery -->
<div class="gallery_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title text-center mb-65">
                    <h3>Image Galleries</h3>
                </div>
            </div>
        </div>
        <div class="row grid">
            <div class="col-xl-5 col-lg-5 grid-item cat1 col-md-6">
                <div class="single-gallery mb-30">
                    <div class="portfolio-img">
                        <img src="{{ asset('storage/galleries/'.$galleries[0]->image) }}" alt="">
                    </div>
                    <div class="gallery_hover">
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[0]->image) }}"
                            class="hover_inner">
                            <i class="ti-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 grid-item cat3 cat4 col-md-6">
                <div class="single-gallery mb-30">
                    <div class="portfolio-img">
                        <img src="{{ asset('storage/galleries/'.$galleries[1]->image) }}" alt="">
                    </div>
                    <div class="gallery_hover">
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[1]->image) }}"
                            class="hover_inner">
                            <i class="ti-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 grid-item cat4 col-md-6">
                <div class="single-gallery mb-30">
                    <div class="portfolio-img">
                        <img src="{{ asset('storage/galleries/'.$galleries[2]->image) }}" alt="">
                    </div>
                    <div class="gallery_hover">
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[2]->image) }}"
                            class="hover_inner">
                            <i class="ti-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 grid-item cat2 col-md-6">
                <div class="single-gallery mb-30">
                    <div class="portfolio-img">
                        <img src="{{ asset('storage/galleries/'.$galleries[3]->image) }}" alt="">
                    </div>
                    <div class="gallery_hover">
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[3]->image) }}"
                            class="hover_inner">
                            <i class="ti-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 grid-item cat2 col-md-6">
                <div class="single-gallery mb-30">
                    <div class="portfolio-img">
                        <img src="{{ asset('storage/galleries/'.$galleries[4]->image) }}" alt="">
                    </div>
                    <div class="gallery_hover">
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[4]->image) }}"
                            class="hover_inner">
                            <i class="ti-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ gallery -->

@endsection