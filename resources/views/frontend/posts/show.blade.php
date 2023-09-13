@extends ('frontend.layouts.app')

@section('content')
<!-- bradcam_area  -->
<div class="bradcam_area breadcam_bg_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>Blog</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<!--================Blog Area =================-->
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                        <img class="img-fluid" src="{{ asset($$module_name_singular->featured_image) }}" alt="">
                    </div>
                    <div class="blog_details">
                        <h2>{{ $$module_name_singular->name }}</h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="#"><i class="fa fa-user"></i> {{ $post->category_name }},
                                    {{ $post->created_by_alias }}</a></li>
                            <!-- <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li> -->
                        </ul>
                        {!!$post->content !!}
                    </div>
                </div>
                @include('frontend.includes.disqus-comment')


                <div class="navigation-top">
                    <div class="d-sm-flex justify-content-between text-center">
                        <!-- <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span> Lily and 4
                            people like this</p> -->
                        <div class="col-sm-4 text-center my-2 my-sm-0">
                            <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                        </div>
                        <ul class="social-icons">
                            <li><a href="https://www.facebook.com/official.kangenband" target="_blank"><i
                                        class="fa fa-facebook-f"></i></a></li>
                            <li><a href="https://twitter.com/kangenband_ID" target="_blank"><i
                                        class="fa fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="blog-author">
                    <div class="media align-items-center">
                        <img src="{{ asset('assets_front/img/blog/logo-wahanaproduction.png') }}" alt="">
                        <div class="media-body">
                            <a href="#">
                                <h4>Wahana Production</h4>
                            </a>
                            <p>Bersama Wahana Production kami akan selalu membuat karya-karya yang dapat memanjakan
                                telinga para fans setia dan seluruh penggemar Kangen Band. </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Recent Post</h3>
                        @foreach($recents as $item)
                        @php
                        $details_url = route("frontend.posts.show",[$item->slug]);
                        @endphp

                        <div class="media post_item">
                            <img src="{{ asset($item->featured_image) }}" alt="post">
                            <div class="media-body">
                                <a href="{{ $details_url }}">
                                    <h3>{{ excerpt($item->name) }}</h3>
                                </a>
                                <p>{{ date_format($item->published_at,"d M Y") }}</p>
                            </div>
                        </div>
                        @endforeach
                    </aside>
                    <aside class="single_sidebar_widget newsletter_widget">
                        <h4 class="widget_title">Newsletter</h4>
                        <form action="#">
                            <div class="form-group">
                                <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                type="submit">Subscribe</button>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================ Blog Area end =================-->

@endsection