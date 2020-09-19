@extends('layouts.app')

@section('content')
    <div class="container">
        <div>
            <h3 class="card-title">About</h3>
        </div>
        <div class="row justify-content-center">

            <div class="col-md-8">
                <div class="card">

                    <div class="card-header">{{$company->first_name}} {{$company->last_name}}</div>

                    <div class="card-body">
                        {{$company->business_name}}<br>
                        {{$company->email}}
                    </div>


                </div>

                <hr>
                <div class="card">
                    <div class="card-header">All the Jobs</div>

                    <table class="table">
                        <thead>
                        <th>Job Title</th>
                        <th>Salary</th>
                        <th>Address</th>
                        <th>Action</th>
                        </thead>
                        <tbody>
                        @foreach($company->jobs as $job)
                            <tr>
                                <td><i class="fa fa-briefcase"></i> {{$job->title}}</td>
                                <td><i class="fa fa-dollar-sign"></i> {{$job->salary}}</td>
                                <td><i class="fa fa-map-marker"></i> {{$job->location}} , {{$job->country}}</td>
                                <td>
                                    @if(Auth::user()->user_type=='seeker')
                                    <a href="{{route('jobs.show',['job'=>$job->id])}}">
                                        <button class="btn btn-success">Apply</button>
                                    </a>
                                        @else
                                        <a href="{{route('jobs.show',['job'=>$job->id])}}">
                                            <button class="btn btn-success">See More</button>
                                    @endif

                                </td>
                                <td></td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
@endsection
