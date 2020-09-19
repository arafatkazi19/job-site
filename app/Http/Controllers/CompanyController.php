<?php

namespace FindJob\Http\Controllers;

use FindJob\Company;
use FindJob\Profile;
use FindJob\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class CompanyController extends Controller
{
    //
    public function index($id){
        $company = Company::find($id);
        return view('company.index',['company'=>$company]);
    }

    public function company_dropdown($id){
        $company = Company::find($id);
        return view('company.drop_down',['company'=>$company]);
    }




}
