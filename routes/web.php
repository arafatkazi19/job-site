<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


/////Jobs


Route::get('/','JobController@index')->name('home');
Route::get('/jobs/{id}','JobController@show')->name('jobs.show');
Route::get('/job/create','JobController@createJob')->name('job-create');
Route::post('/job/store','JobController@storeJob')->name('job-store');
Route::post('/job/apply/{id}','JobController@applyJob')->name('job-apply');
Route::get('/job/applicants','JobController@applicants');
Route::get('/job/applicants/delete/{id}','JobController@deleteApplicant')->name('delete-applicant');






///company
Route::get('/company/{id}','CompanyController@index')->name('company_details');
Route::get('/company_details/{id}','CompanyController@company_dropdown')->name('company.dropdown');




////Employer Profile
Route::view('employer/profile','auth.employer-register')->name('employer.registration');
Route::post('employer/profile/store','EmployerProfileController@store')->name('employer.store');


///User Profile
Route::get('user/profile','UserProfileController@index')->name('user-profile');
Route::post('profile/store','UserProfileController@store')->name('profile.store');
Route::post('profile/resume','UserProfileController@resume')->name('profile.resume');
Route::post('profile/profile_photo','UserProfileController@profile_photo')->name('profile.profile_photo');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
