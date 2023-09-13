<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Kangen Band</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ setting('meta_description') }}">
    <meta name="keyword" content="{{ setting('meta_keyword') }}">

    @include('frontend.includes.meta')

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets_front/img/logo_mini.png')}}">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="{{asset('assets_front/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/nice-select.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/audioplayer.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/gijgo.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/slicknav.css')}}">
    <link rel="stylesheet" href="{{asset('assets_front/css/style.css')}}">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

        @yield('style')

</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    @include('frontend.includes.header')


    @yield('content')


    @include('frontend.includes.footer')

    <!-- link that opens popup -->

    <!-- JS here -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="{{ asset('assets_front/js/vendor/modernizr-3.5.0.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/vendor/jquery-1.12.4.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/popper.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/ajax-form.js') }}"></script>
    <script src="{{ asset('assets_front/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.counterup.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/audioplayer.js') }}"></script>
    <script src="{{ asset('assets_front/js/scrollIt.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.scrollUp.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/wow.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/nice-select.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.slicknav.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/plugins.js') }}"></script>
    <script src="{{ asset('assets_front/js/gijgo.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/slick.min.js') }}"></script>
    <!--contact js-->
    <script src="{{ asset('assets_front/js/contact.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.ajaxchimp.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.form.js') }}"></script>
    <script src="{{ asset('assets_front/js/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('assets_front/js/mail-script.js') }}"></script>

    <script src="{{ asset('assets_front/js/main.js') }}"></script>

    <script>
    $(function() {
        $('audio').audioPlayer({

        });
    });
    </script>
</body>

</html>