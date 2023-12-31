    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-2">
                                <div class="logo">
                                    <a href="/">
                                        <img src="{{ asset('assets_front/img/logo.png') }}" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-7">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a class="active" href="/">home</a></li>
                                            <li><a href="{{ route('frontend.about') }}">About</a></li>
                                            <li><a href="{{ route('frontend.track') }}">tracks</a></li>
                                            <li><a href="{{ url('posts') }}">blog</a></li>
                                            <!-- <li><a href="{{ route('frontend.partner') }}">partner</a></li> -->
                                            <li><a href="{{ route('frontend.contact') }}">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                <div class="social_icon text-right">
                                    <ul>
                                        <li><a href="https://www.facebook.com/official.kangenband" target="_blank"> <i class="fa fa-facebook"></i> </a></li>
                                        <li><a href="https://twitter.com/kangenband_ID" target="_blank"> <i class="fa fa-twitter"></i> </a></li>
                                        <li><a href="https://www.instagram.com/kangenbandreal/" target="_blank"> <i class="fa fa-instagram"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->