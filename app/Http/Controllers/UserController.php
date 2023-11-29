<?php

namespace App\Http\Controllers;

use App\Http\Mappers\Mapper;
use App\Models\User;


class UserController extends Controller
{
    public function getSales()
    {
        $users = User::query()
            ->where("role_id",2)
            ->get()
            ->map([Mapper::class, 'userMapper']);

        return response($users);
    }

    public function getView($name, $method)
    {
        $user = User::query()
            ->select("id","target")
            ->where('name', 'like', '%' . $name . '%')
            ->first();
        $leadHistory = response(['error' => 'User not found'], 404);

        if(!$user){
                return response(['error' => 'User not found'], 404);

        }
        else if ($method == "new") {
            $leadHistory = LeadController::getNew($user->id);
        }
        else if ($method == "done") {
            $leadHistory = LeadController::getDone($user->id);
        }
        else if ($method == "lost") {
            $leadHistory = LeadController::getLost($user->id);
        }
        else if($method == "target"){
            $userId = $user->id;
            $leadHistory = LeadController::getDone($userId);
            $sumValue = $leadHistory->sum('value');
            return response(['value' => $sumValue, 'target'=> $user->target]);
        }
        else if($method == "all"){
            $leadHistory = LeadController::getAll($user->id);
        }
        else {
            return response(['error' => 'Method not allowed'], 404);
        }
        return response($leadHistory);
    }



}
