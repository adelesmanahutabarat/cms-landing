<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Header;
use App\Models\Track;
use App\Models\Youtube;
use App\Models\Gallery;
use App\Models\Subscribe;
use App\Models\ContactUs;
use App\Models\Post;
use Illuminate\Support\Facades\Mail;

class FrontendController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $body_class = '';
        $header = Header::first();
        $track = Track::find($header->track_id);
        $youtubes = Youtube::orderBy('created_at', 'ASC')->take(4)->get();
        $tracks = Track::orderBy('created_at', 'DESC')->take(3)->get();
        $galleries = Gallery::all();
        $posts = Post::orderBy('created_at', 'DESC')->take(4)->get();

        return view('frontend.index', compact('body_class', 'header', 'track', 'youtubes', 'tracks', 'galleries', 'posts'));
    }

    public function about(){
        $body_class = '';

        $youtube = Youtube::orderBy('created_at', 'ASC')->first();
        $galleries = Gallery::all();

        return view('frontend.about', compact('body_class', 'youtube', 'galleries'));
    }

    public function track(){
        $body_class = '';
        $tracks = Track::orderBy('created_at', 'DESC')->take(4)->get();
        $youtubes = Youtube::orderBy('created_at', 'ASC')->take(4)->get();

        return view('frontend.track', compact('body_class', 'tracks', 'youtubes'));
        
    }

    public function blog(){
        $body_class = '';

        return view('frontend.blog', compact('body_class'));
    }

    public function partner(){
        $body_class = '';

        return view('frontend.partner', compact('body_class'));
    }

    public function contact(){
        $body_class = '';

        return view('frontend.contact', compact('body_class'));
    }

    public function subscribe(Request $request){
        $data['email'] = $request->email;
        $data['is_send'] = 0;
        $subscribe = Subscribe::create($data);

        try {
            $r = request();
            // $to_email = array("adolaws@premimusik.com", "sonypohan22@gmail.com" ,"adelesmana.wahana@gmail.com");
            $to_email = array("adelesmana.wahana@gmail.com");
            $from_email = $r->email;
            $message = "Ingin Berlangganan";

            Mail::send("frontend.mail.subscribe", ['msg' => $message, 'email' => $from_email], function 
                ($message) use ($to_email) {
                    $message->to($to_email)
                    ->subject("Response From Subscribe Kangen Band Landing Page");
                    $message->from($to_email, "New Subscriber kangenband.wahanaproduction.com");
                });

            $subscribeUpdate = Subscribe::find($subscribe->id);
            $subscribeUpdate->is_send = 1;
            $subscribeUpdate->save();

            return redirect('/#footer')->with(['success' => 'Terimakasih Sudah Berlangganan, Tunggu Info-info terkini Dari Kami yaa']);    
        } catch (Exception $e) {
            return redirect('/#footer')->with(['success' => 'Terimakasih Sudah Berlangganan, Tunggu Info-info terkini Dari Kami yaa']);    
        }
    }

    public function contactus(Request $request){
        $data = request()->all();
        $data['is_send'] = 0;
        $contactus = ContactUs::create($data);

        try {
            $r = request();
            // $to_email = array("adolaws@premimusik.com", "sonypohan22@gmail.com" ,"adelesmana.wahana@gmail.com");
            $to_email = array("adelesmana.wahana@gmail.com");
            $from_email = $r->email;
            $from_name = $r->name;
            $subject = $r->subject;
            $message = $r->message;

            Mail::send("frontend.mail.contactus", ['name' => $from_name, 'msg' => $message, 'email' => $from_email], function 
                ($message) use ($from_name, $to_email) {
                    $message->to($to_email, $from_name)
                    ->subject("Response From Contact Us Kangen Band Landing Page");
                    $message->from($to_email, "Contact Us kangenband.wahanaproduction.com");
                });

            $contactusUpdate = ContactUs::find($contactus->id);
            $contactusUpdate->is_send = 1;
            $contactusUpdate->save();

            return redirect('contact/#sendmail')->with(['success' => 'Pesan Kamu Sudah Kami Terima, Tunggu Feedback Dari Kami yaa']);    
        } catch (Exception $e) {
            return redirect('contact/#sendmail')->with(['success' => 'Pesan Kamu Sudah Kami Terima, Tunggu Feedback Dari Kami yaa']);    
        }
    }
}