@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-user-circle"></i> {{$job->title}}</div>

                    <div class="card-body">

                        @if(Session::has('apply_message'))
                            <div class="alert alert-success">
                                {{Session::get('apply_message')}}
                            </div>
                        @endif

                        <h3><i class="fa fa-info-circle"></i> Job Description</h3>
                        <p>{{$job->description}}</p>

                        <hr>

                        <h3>Salary</h3>
                        <p><i class="fa fa-dollar-sign"></i> {{$job->salary}}</p>

                        <hr>

                        <h3><i class="fa fa-building"></i>Company:</h3>
                        <p><a href="{{route('company_details',['id'=>$job->company->id])}}">{{$job->company->first_name}} {{$job->company->last_name}}</a></p>

                        <h3><i class="fa fa-map-marker"></i> Address</h3>
                        <p>{{$job->location}} , {{$job->country}}</p>

                        @if(Auth::user()->user_type=='seeker')
                                @if(!$job->checkApplication())
                            <form action="{{route('job-apply',['id'=>$job->id])}}" method="post">
                                @csrf
                                <button class="btn btn-primary btn-lg">Apply Here</button>
                            </form>
                                @endif

                        @endif
                    </div>
                </div>
            </div>
{{--            <div class="col-md-4">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">Dashboard</div>--}}

{{--                    <div class="card-body">--}}



{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>
    </div>
@endsection

