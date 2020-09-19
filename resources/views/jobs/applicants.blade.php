@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                @foreach($applicants as $applicant)
                <div class="card">
                    <div class="card-header">Applicants</div>

                        <div class="card-body">
                           <table class="table">
                               <thead>
                                    <th>Name</th>
                                    <th>email</th>
                                    <th>Skill</th>
                                    <th>Photo</th>
                                    <th>action</th>
                               </thead>
                               @foreach($applicant->users as $user)
                               <tbody>
                                <tr>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->profile->skills}}</td>
                                    <td> <img src="{{ asset('uploads/photo/'.$user->profile->profile_photo)  }}" height="100" weidth="100"></td>

                                    <td>
                                        <a href="{{route('delete-applicant',['id'=>$user->id])}}"><i class="fa fa-trash-alt"></i></a>
                                    </td>

                                </tr>
                               </tbody>
                               @endforeach
                           </table>
                        </div>
                    </div>
                @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
