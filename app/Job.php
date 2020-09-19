<?php

namespace FindJob;
use FindJob\Company;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Job extends Model
{
    //

    protected $guarded=[];

    public function company(){
        return $this->belongsTo('FindJob\Company');
    }

    public function users(){
        return $this->belongsToMany('FindJob\User');
    }

    public function checkApplication(){
        return DB::table('job_user')->where('user_id',auth()->user()->id)
            ->where('job_id',$this->id)->exists();
    }

}
