@extends ('frontend.layouts.app')

@section('style')

@endsection

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
<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="blog_left_sidebar">
                    @foreach($$module_name as $item)
                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="{{ asset($item->featured_image) }}" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>{{ date_format($item->published_at,"d") }}</h3>
                                <p>{{ date_format($item->published_at,"M") }}</p>
                            </a>
                        </div>

                        @php
                        $details_url = route("frontend.posts.show",[$item->slug]);
                        @endphp

                        <div class="blog_details">
                            <a class="d-inline-block" href="{{ $details_url }}">
                                <h2>{{ $item->name }}</h2> 
                            </a>
                            <p>{{ $item->intro }} <strong> <a href="#"> Selengkapnya . . . </a></strong> </p> 
                            

                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i> {{ $item->category_name }},
                                        {{ $item->created_by_alias }}</a></li>
                                <!-- <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li> -->
                            </ul>
                        </div>
                    </article>
                    @endforeach

                    <!-- <nav class="blog-pagination justify-content-center d-flex">
                        <ul class="pagination">
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Previous">
                                    <i class="ti-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link">1</a>
                            </li>
                            <li class="page-item active">
                                <a href="#" class="page-link">2</a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Next">
                                    <i class="ti-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </nav> -->

                    <div class="pagination">
                        {{ $$module_name->links() }}
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

                        <form method="POST" action="{{ route('frontend.subscribe') }}">
                            {{ csrf_field() }}
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
<!--================Blog Area =================-->

@endsection