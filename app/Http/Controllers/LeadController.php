<?php

namespace App\Http\Controllers;

use App\Http\Mappers\Mapper;
use App\Models\Lead;
use Illuminate\Support\Facades\Http;

class LeadController extends Controller
{
    public function sheetData()
    {
        $leads = Lead::query()
            ->with("LeadStatus:id,name")
            ->with("User:id,name")
            ->get();
        foreach ($leads as $lead){
        $data = [
            'id' => $lead->id,
            'name' => $lead->full_name,
            'email' => $lead->email,
            'phone' => $lead->phone_number,
            'value' => $lead->value,
            'status' => optional($lead->LeadStatus)->name,
            'sales' => optional($lead->User)->name,
            'created_at' => $lead->created_at,

        ];
        $response = Http::post('https://sheetdb.io/api/v1/z8t8fd383gye6', $data);
    }


        if ($response->successful()) {
            return response()->json(['message' => 'Data added successfully']);
        } else {
            return response()->json(['error' => 'Failed to add data to SheetDB'], 500);
        }
    }
    public static function getAll($userId = null)
    {
        $query = Lead::query()
            ->with("LeadStatus:id,name")
            ->with("User:id,name");

        if ($userId !== null) {
            $query->where("sales_id", $userId);
        }

        $leads = $query
            ->get()
            ->map([Mapper::class, 'leadMapper']);
        return $leads;
    }

    public static function getNew($userId = null)
    {
        $query = Lead::query()
            ->with("LeadStatus:id,name")
            ->with("User:id,name");

        if ($userId !== null) {
            $query->where("sales_id", $userId);
        }

        $leads = $query->where(function ($query) {
            $query->where("status_id", 1)
                ->orWhere("status_id", 4);
        })
            ->get()
            ->map([Mapper::class, 'leadMapper']);
        return $leads;
    }


    public static function getDone($userId = null)
    {
        $query = Lead::query()
            ->with("LeadStatus:id,name")
            ->with("User:id,name");

        if ($userId !== null) {
            $query->where("sales_id", $userId);
        }

        $leads = $query->where(function ($query) {
            $query->where("status_id", 2)
                ->orWhere("status_id", 3);
        })
            ->get()
            ->map([Mapper::class, 'leadMapper']);

        return $leads;
    }

    public static function getLost($userId = null)
    {
        $query = Lead::query()
            ->with("LeadStatus:id,name")
            ->with("User:id,name");

        if ($userId !== null) {
            $query->where("sales_id", $userId);
        }

        $leads = $query->where(function ($query) {
            $query->where("status_id", 5)
                ->orWhere("status_id", 6);
        })
            ->get()
            ->map([Mapper::class, 'leadMapper']);

        return $leads;
    }
    public static function getById($id)
    {
        $lead = Lead::with("LeadStatus:id,name")
            ->with("User:id,name")
            ->find($id);

        return Mapper::leadMapper($lead);
    }

}
