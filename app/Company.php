<?php

namespace FindJob;
use FindJob\Job;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    //

    protected $guarded=[];

    public function jobs(){
        return $this->hasMany('FindJob\Job');
    }
}
