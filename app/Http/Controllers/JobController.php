<?php

namespace FindJob\Http\Controllers;

use FindJob\Company;
use FindJob\Job;
use FindJob\User;
use FindJob\Profile;
use Illuminate\Auth\Access\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class JobController extends Controller
{
    //
    public function index(){
       $jobs = DB::table('jobs')->orderBy('id','desc')->paginate(10);
//        $jobs = Job::sortByDesc('created_at')->paginate(10);
        return view('welcome',compact('jobs'));
    }

    public function createJob(){
        return view('jobs.create-job');
    }

    public function storeJob(Request $request){

        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'salary' => 'required',
            'location' => 'required',
            'country' => 'required'
        ]);


        $user_id = auth()->user()->id;
        $company = Company::where('user_id',$user_id)->first();
        $company_id = $company->id;

        Job::create([
            'user_id' => $user_id,
            'company_id' => $company_id,
            'title' => request('title'),
            'description' => request('description'),
            'salary' => request('salary'),
            'location' => request('location'),
            'country' => request('country'),

        ]);

        return redirect()->back()->with('job_message','Job Added Successfully');

    }

    public function applyJob(Request $request,$id){
        $jobId = Job::find($id);
        $jobId->users()->attach(Auth::user()->id);

        return redirect()->back()->with('apply_message','You Applied for the Job');
    }

    public function applicants(){
        $applicants = Job::has('users')
            ->where('user_id',auth()->user()->id)->get();

        return view('jobs.applicants',compact('applicants'));
    }



    public function show($id){
        $job = Job::find($id);
        return view('jobs.show',['job'=>$job]);
    }

    public function deleteApplicant($id)
    {
        DB::table('job_user')->where('user_id',$id)->delete();


        return redirect()->back();


    }


}
