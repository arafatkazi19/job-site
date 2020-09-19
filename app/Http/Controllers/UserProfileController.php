<?php

namespace FindJob\Http\Controllers;

use FindJob\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserProfileController extends Controller
{
    //
    public function index(){
        return view('profile.index');
    }

    public function store(Request $request){
        $user_id = auth()->user()->id;
        Profile::where('user_id',$user_id)->update([
            'skills' => request('skills'),
        ]);

        return redirect()->back()->with('message','Skills Added');
    }

    public function resume(Request $request){

        $this->validate($request,[
            'resume'=>'required|mimes:pdf,docx'
        ]);

        $user_id = auth()->user()->id;
        $resume = $request->file('resume')->store('public/files');

        Profile::where('user_id',$user_id)->update([
            'resume' => $resume
        ]);

        return redirect()->back()->with('message1','Resume Uploaded Successfully');

    }

    public function profile_photo(Request $request){
        $this->validate($request,[
            'profile_photo'=>'mimes:jpg,jpeg,png'
        ]);
        $user_id = auth()->user()->id;
        if($request->hasFile('profile_photo')){
            $file = $request->file('profile_photo');
            $text = $file->getClientOriginalExtension();
            $fileName = time().'.'.$text;
            $file->move('uploads/photo',$fileName);
            Profile::where('user_id',$user_id)->update([
               'profile_photo'=>$fileName
            ]);

            return redirect()->back()->with('message2','Photo Uploaded Successfully');
        }
    }
}
