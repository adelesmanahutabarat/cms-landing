@extends ('frontend.layouts.app')

@section('content')

<!-- bradcam_area  -->
<div class="bradcam_area breadcam_bg_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>About Us</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<!-- about_area  -->
<div class="about_area">
    <div class="container">
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

<div class="singer_video">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10">
                <div class="image">
                    <img src="{{ asset('storage/artwork/'.$youtube->image) }}" alt="">
                    <div class="video_btn">
                        <a class="popup-video" href="{{ 'https://www.youtube.com/watch?v='.$youtube->url}}"><i
                                class="fa fa-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[0]->image) }}" class="hover_inner">
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
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[1]->image) }}" class="hover_inner">
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
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[2]->image) }}" class="hover_inner">
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
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[3]->image) }}" class="hover_inner">
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
                        <a class="popup-image" href="{{ asset('storage/galleries/'.$galleries[4]->image) }}" class="hover_inner">
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