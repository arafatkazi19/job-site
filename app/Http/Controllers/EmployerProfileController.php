<?php

namespace FindJob\Http\Controllers;

use FindJob\Company;
use FindJob\Profile;
use FindJob\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class EmployerProfileController extends Controller
{
    //
    public function store(){
        $user=User::create([
            'full_name' => request('first_name').' '.request('last_name'),
            'email' => request('email'),
            'user_type' => request('user_type'),
            'password' => Hash::make(request('password')),
        ]);

        Company::create([
            'user_id' => $user->id,
            'first_name' => request('first_name'),
            'last_name' => request('last_name'),
            'business_name' => request('business_name')
        ]);

        return redirect()->to('login');
    }
}
