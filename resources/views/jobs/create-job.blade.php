@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center">Post Job</div>

                    @if(Session::has('job_message'))
                        <div class="alert alert-success">
                            {{Session::get('job_message')}}
                        </div>
                    @endif

                    <div class="card-body">
                        <form action="{{route('job-store')}}" method="POST" class="form-horizontal">
                        @csrf
                            <div class="form-group">
                                <label class="control-label">Job Title</label>
                                <input type="text" name="title" class="form-control">
                                @if($errors->has('title'))

                                    <div class="error text-danger" >
                                        {{$errors->first('title')}}
                                    </div>

                                @endif
                           </div>


                            <div class="form-group">
                                <label class="control-label">Job Description</label>
                                <textarea type="text" name="description" class="form-control" rows="5" cols="30"></textarea>
                                @if($errors->has('description'))

                                    <div class="error text-danger" >
                                        {{$errors->first('description')}}
                                    </div>

                                @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">Salary</label>
                                <input type="text" name="salary" class="form-control">
                                @if($errors->has('salary'))

                                    <div class="error text-danger" >
                                        {{$errors->first('salary')}}
                                    </div>

                                @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">Location</label>
                                <input type="text" name="location" class="form-control">
                                @if($errors->has('location'))

                                    <div class="error text-danger" >
                                        {{$errors->first('location')}}
                                    </div>

                                @endif
                            </div>

                            <div class="form-group">
                                <label class="control-label">Country</label>
                                <input type="text" name="country" class="form-control">
                                @if($errors->has('country'))

                                    <div class="error text-danger" >
                                        {{$errors->first('country')}}
                                    </div>

                                @endif
                            </div>

                            <div class="form-group">
                                <button class="btn btn-success">Submit</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

