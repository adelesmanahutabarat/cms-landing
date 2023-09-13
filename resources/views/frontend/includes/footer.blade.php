       <!-- contact_rsvp -->
       <div class="contact_rsvp">
           <div class="container">
               <div class="row">
                   <div class="col-xl-12">
                       <div class="text text-center">
                           <h3>Contact For Business inquiries</h3>
                           <a class="boxed-btn3" href="{{ route('frontend.contact') }}">Contact Us</a>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <!--/ contact_rsvp -->

       <!-- footer start -->
       <footer class="footer" id="footer">
           <div class="footer_top">
               <div class="container">
               @if ($message = Session::get('success'))
                       <div class="alert alert-success alert-block"
                           style="margin-top: 1%; width: 50%;margin-left: auto; margin-right: auto;">
                           <button type="button" class="close" data-dismiss="alert">×</button>
                           <strong>{{ $message }}</strong>
                       </div>
                       @endif
                   <div class="row">
                       <div class="col-xl-6 col-md-6">
                           <div class="footer_widget">
                               <!-- <h3 class="footer_title">
                                   Services
                               </h3> -->

                               <div class="subscribe-from">
                                   <form method="POST" action="{{ route('frontend.subscribe') }}">
                                       {{ csrf_field() }}

                                       <input type="email" name="email" placeholder="Enter your mail">
                                       <button type="submit">Subscribe</button>
                                   </form>
                               </div>
                               <p class="sub_text">Dapatkan informasi untuk mendapatkan kerjasama dengan kami.
                               </p>
                           </div>
                       </div>
                       <div class="col-xl-5 col-md-5 offset-xl-1">
                           <div class="footer_widget">
                               <h3 class="footer_title">
                                   Contact Us
                               </h3>
                               <ul>
                                   <li><a href="#">hi@wahanaproduction.com
                                       </a></li>
                                   <li><a href="#">+62 856 9445 3144
                                       </a></li>
                                   <li><a href="#">Jl. Taman Galaxy Raya No.17, RT.006/RW.009, Jakasampurna, Bekasi
                                           Barat, Bekasi City, West Java 17145</a></li>
                               </ul>
                               <div class="socail_links">
                                   <ul>
                                       <li>
                                           <a href="https://www.facebook.com/official.kangenband" target="_blank">
                                               <i class=" fa fa-facebook "></i>
                                           </a>
                                       </li>
                                       <li>
                                           <a href="#">
                                               <i class="fa fa-google-plus"></i>
                                           </a>
                                       </li>
                                       <li>
                                           <a href="https://twitter.com/kangenband_ID" target="_blank">
                                               <i class="fa fa-twitter"></i>
                                           </a>
                                       </li>
                                       <li>
                                           <a href="https://www.youtube.com/channel/UCGx_8w3WQpD2lbVLt53-BYA"
                                               target="_blank">
                                               <i class="fa fa-youtube-play"></i>
                                           </a>
                                       </li>
                                       <li>
                                           <a href="https://www.instagram.com/wahana.production/" target="_blank">
                                               <i class="fa fa-instagram"></i>
                                           </a>
                                       </li>
                                   </ul>
                               </div>

                           </div>
                       </div>
                   </div>
               </div>
           </div>
           <div class="copy-right_text">
               <div class="container">
                   <div class="footer_border"></div>
                   <div class="row">
                       <div class="col-xl-7 col-md-6">
                           <p class="copy_right">
                               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                               Copyright &copy;<script>
                               document.write(new Date().getFullYear());
                               </script> All rights reserved | This template is made with <i class="fa fa-heart-o"
                                   aria-hidden="true"></i> by <a href="https://colorlib.com"
                                   target="_blank">Colorlib</a>
                               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                           </p>
                       </div>
                       <div class="col-xl-5 col-md-6">
                           <div class="footer_links">
                               <ul>
                                   <li><a href="/">home</a></li>
                                   <li><a href="{{ route('frontend.about') }}">about</a></li>
                                   <li><a href="{{ route('frontend.track') }}">tracks</a></li>
                                   <li><a href="{{ url('posts') }}">blog</a></li>
                                   <li><a href="{{ route('frontend.contact') }}">contact</a></li>
                               </ul>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </footer>
       <!--/ footer end  -->