@extends('layouts.app')
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-offset-2 col-md-8">
            <br>
            <div class="well">
                <h3 class="text-center text-success">Edit Company</h3>
                <hr>
                <form action="{{route('update-company')}}" method="POST" class="form-horizontal">
                    @csrf
                    <div class="form-group">
                        <label class="control-label col-md-3">First Name</label>
                        <div class="col-md-9">
                            <input type="text" name="first_name" class="form-control" value="{{$company->first_name}}">
                            <input type="hidden" name="id" class="form-control" value="">

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Last Name</label>
                        <div class="col-md-9">
                            <input type="text" name="last_name" class="form-control" value="{{$company->last_name}}">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3">Business Name</label>
                        <div class="col-md-9">
                            <input type="text" name="business_name" class="form-control" value="{{$company->business_name}}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Email</label>
                        <div class="col-md-9">
                            <input type="text" name="email" class="form-control" value="{{auth()->user()->email}}">
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                            <input type="submit" value="Update" class="btn btn-success btn-block">
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
@endsection
