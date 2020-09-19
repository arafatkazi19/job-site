@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">


        <div class="col-md-3">
            <div class="card">

            @if(empty(Auth::user()->profile->profile_photo))
                    <div class="text-center">
                        <img src="{{asset('uploads/photo')}}/avatar.png" style="width: 150px;height: 130px" class="rounded">
                    </div>
                @else

                    <div class="text-center">
                        <img src="{{asset('uploads/photo')}}/{{Auth::user()->profile->profile_photo}}" width="150" height="130">
                    </div>


                @endif

            <form action="{{route("profile.profile_photo")}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label>Upload Photo</label>
                        <input class="form-control" type="file" name="profile_photo"><br>
                        <button class="btn btn-primary">Upload</button>
                    </div>
                </div>

                @if($errors->has('profile_photo'))
                    <div class="error text-danger">
                        {{$errors->first('profile_photo')}}
                    </div>
                    @endif

                @if(Session::has('message2'))
                    <div class="alert alert-success">
                        {{Session::get('message2')}}
                    </div>
                @endif
            </form>
        </div>
        </div>

        <div class="col-md-9">
            <div class="card">
                <div class="card-header">User Current Info</div>
                <div class="card-body">
                    <div class="card-body">
                        <div class="text-center">
                            @if(empty(Auth::user()->profile->profile_photo))
                                <div class="text-center">
                                    <img src="{{asset('uploads/photo')}}/avatar.png" style="width: 150px;height: 130px" class="rounded">
                                </div>
                            @else

                                <div class="text-center">
                                    <img src="{{asset('uploads/photo')}}/{{Auth::user()->profile->profile_photo}}" width="150" height="130">
                                </div>


                            @endif
                        </div>
                        <p>Name: {{Auth::user()->name}}</p>
                        <p>Mail: {{Auth::user()->email}}</p>
                        <p>Skills : {{Auth::user()->profile->skills}}</p>



{{--                        @if(!empty(Auth::user()->profile->resume))--}}
{{--                            <p>--}}

{{--                                <a href="{{Storage::url(Auth::user()->profile->resume)}}">--}}
{{--                                    Resume--}}
{{--                                </a>--}}
{{--                            </p>--}}
{{--                            @else--}}
{{--                                <p>Please Upload Your Resume</p>--}}
{{--                        @endif--}}
                    </div>


                    <form action="{{route("profile.store")}}" method="post">
                        @csrf
                    <div class="form-group">
                        <label>Add Skills</label>
                        <input value="{{Auth::user()->profile->skills}}" class="form-control" type="text" name="skills">
                    </div>


                    <div class="form-group">
                        <button class="btn btn-success">Submit</button>
                    </div>

                    @if(Session::has('message'))
                        <div class="alert alert-success">
                            {{Session::get('message')}}
                        </div>
                        @endif
                </form>

                    <form action="{{route("profile.resume")}}" method="post" enctype="multipart/form-data">
                        @csrf
                    <div class="card-body">
                    <div class="form-group">
                        <label>Upload Resume</label>
                        <input class="form-control" type="file" name="resume"><br>
                        <button class="btn btn-primary">Update</button>
                    </div>


                        @if($errors->has('resume'))

                            <div class="error text-danger" >
                                {{$errors->first('resume')}}
                            </div>

                        @endif

                        @if(Session::has('message1'))
                            <div class="alert alert-success">
                                {{Session::get('message1')}}
                            </div>
                        @endif


                    </form>


                </div>

            </div>
        </div>

@endsection
