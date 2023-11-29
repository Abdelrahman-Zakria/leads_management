<?php

namespace App\Http\Mappers;

class Mapper
{
    public static function leadMapper($lead): array
    {
        return [
            'id' => $lead->id,
            'name' => $lead->full_name,
            'email' => $lead->email,
            'phone' => $lead->phone_number,
            'value' => $lead->value,
            'status' => optional($lead->LeadStatus)->name,
            'sales' => optional($lead->User)->name,
//            'starting_date' => $lead->starting_date,
//            'companyName' => $lead->companyName,
//            'jobTitle' => $lead->jobTitle,
//            'address' => $lead->address,
//            'source' => $lead->source,
            'created_at' => $lead->created_at,
//            'updated_at' => $lead->updated_at
        ];
    }
    public static function userMapper($user): array
    {
        return [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'phoneNumber' => $user->phone_number,
            'target' => $user->target,
            'role' => optional($user->Role)->name,
            'status' => optional($user->UserStatues)->name,
            'created_at' => $user->created_at,
        ];
    }
}
