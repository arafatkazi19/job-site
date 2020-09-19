@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <h1>Recent Jobs</h1>
            <table class="table">
                <thead>
                <th>Job Title</th>
                <th>Salary</th>
                <th>Address</th>
                <th>Action</th>
                </thead>
                <tbody>
                @foreach($jobs as $job)
                <tr>
                    <td><i class="fa fa-briefcase"></i> {{$job->title}}</td>
                    <td><i class="fa fa-dollar-sign"></i> {{$job->salary}}</td>
                    <td><i class="fa fa-map-marker"></i> {{$job->location}} , {{$job->country}}</td>
                    <td>

                        @if(Auth::check() && Auth::user()->user_type=='seeker')
                        <a href="{{route('jobs.show',['job'=>$job->id])}}">
                        <button class="btn btn-success">Apply</button>
                        </a>
                            @elseif(Auth::check() && Auth::user()->user_type=='employer')
                            <a href="{{route('jobs.show',['job'=>$job->id])}}">
                                <button class="btn btn-success">See More</button>
                            </a>
                            @endif

                    </td>
                    <td></td>
                </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="text-center">
                {{$jobs->links()}}
            </div>

        </div>
    </div>
@endsection
