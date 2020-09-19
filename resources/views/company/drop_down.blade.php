@extends('layouts.app')

@section('content')
    <div class="container">
        <div>
            <h3 class="card-title">About</h3>
        </div>
        <div class="row justify-content-center">

            <div class="col-md-8">
                <div class="card">

                    <div class="card-header"><i class="fa fa-building"></i>{{$company->first_name}} {{$company->last_name}}</div>

                    <div class="card-body">
                       <i class="fa fa-business-time"></i> Business Name : {{$company->business_name}}<br>
                       <i class="fa fa-file-contract"></i> Email : {{auth()->user()->email}}<br>
                    </div>




                </div>

                <hr>

                </div>
            </div>
        </div>
    </div>
@endsection
