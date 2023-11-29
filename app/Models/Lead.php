<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    use HasFactory;
    public function LeadStatus(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(LeadStatus::class,"id" , "status_id") ;
    }
    public function User(): \Illuminate\Database\Eloquent\Relations\HasOne
    {
        return $this->hasOne(User::class,"id" , "sales_id") ;
    }
}
